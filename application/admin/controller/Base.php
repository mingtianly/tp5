<?php

namespace app\admin\controller;

use app\common\controller\Common;
use app\common\controller\Redis;
use app\common\model\AdminRole;
use app\common\model\AdminUser;
use think\Db;

class Base extends Common
{
    protected $beforeActionList = [
        'checkLogin' => ['except' => 'login,loginAct,getLeftMenuAct'],
        'getLeftMenuAct' => ['except' => 'login,loginAct'],
        'checkAccess' => ['except' => 'icon,login,loginAct,getLeftMenuAct,logout'],
    ];

    //取消模板引擎
    protected function cancelLayout()
    {
        $this->view->engine->layout(false);
    }

    public function checkLogin()
    {

        $uid = $this->getUid();

        $sessionData = session("admin");
        //判断UID存在
        if (null === $uid) {
            session("admin", []);
            $this->error("请先登录", url("Login/login"));
        }

        //判断上次操作时间
        if (time() - $sessionData['login_time'] > config("my.admin_over_time") * 60) {
            $this->resetAdminInfo(session("admin.uid"));
            session("admin", []);
            $this->error('登录超时,请重新登录', url('Login/login'));
        } else {
            session("admin.login_time", time());
        }
        //判断登陆IP与当前操作IP是否一致
        $nowIp = request()->ip();
        $loginIp = $this->getUserIp();
        if ($nowIp !== $loginIp) {
            $this->resetAdminInfo(session("admin.uid"));
            session("admin", []);
            $this->error('检测到您异地登录,请从新登录', url("Login/login"));
        }
        $redis = new Redis();
        // 判断SESSIONID是否一致
        $loginSessionId = $redis->get('session_id' . $uid);
        if (!$loginSessionId) {
            $loginSessionId = Db::table("admin_user")->field(['session_id'])->find($uid)['session_id'];
            $redis->set('session_id' . $uid, $loginSessionId, config("my.admin_over_time") * 60);
        }
        if (null === $loginSessionId) {
            $this->resetAdminInfo(session("admin.uid"));
            session("admin", []);
            $this->error('未知错误,请重新登录', url("Login/login"));
        } else {
            if (false === xm_pwd_dec(session_id(), $loginSessionId)) {
                $this->resetAdminInfo(session("admin.uid"));
                session("admin", []);
                $this->error("未知错误,请重新登录", url("Login/login"));
            }
        }
    }

    //获取用户登陆时IP
    protected function getUserIp()
    {
        $session = session("admin");
        if (empty($session)) {
            return null;
        }
        if (xm_pwd_dec($session['uid'] . $session['login_ip'], $session['md5'])) {
            return $session['login_ip'];
        } else {
            $this->resetAdminInfo($session['uid']);
            session("admin", null);
            $this->error('检测到您异地登录,请从新登录', url("Login/loginList"));
        }
    }

    protected function getLeftMenuAct()
    {
        $menuList = $this->getLeftMenu();
        $this->assign("menuList", $menuList);
    }

    //获取左侧菜单数据
    protected function getLeftMenu($allFlag = false)
    {
        //获取当前用户所属角色的权限
        $uid = $this->getUid();
        if (Null === $uid) {
            return true;
        }
        $redis = new Redis();
        $over_time = config('my.admin_over_time') * 60;
        $ar_id = $redis->get('admin_ar_id' . $uid);
        if (!$ar_id) {
            $ar_id = AdminUser::field('ar_id')->get($uid)['ar_id'];
            $redis->set('admin_ar_id' . $uid, $ar_id, $over_time);
        }
        $access = $redis->get('admin_access' . $uid);
        if (!$access) {
            $role = AdminRole::field('access')->get($ar_id);
            $access = $role->access;
            $redis->set('admin_access' . $uid, $access, $over_time);
        }
        $access = explode(",", $access);
        $model = model("admin_module");
        if (false === $allFlag) {
            $menuList = $redis->get('admin_menu_list' . $uid);
            if (!$menuList) {
                $menuList = $model->order(['model_disp', 'page_disp'])->where(['id' => $access, "hidden" => 0])->select()->toArray();
                $accessList = $model->order(['model_disp', 'page_disp'])->where(['id' => $access])->select()->toArray();
                $menuList = json_encode($menuList);
                $redis->Set('admin_access_list' . $uid, json_encode($accessList),$over_time);
                $redis->Set('admin_menu_list' . $uid, $menuList,$over_time);
            }
            $menuList = json_decode($menuList, true);
        } else {
            $menuList = $model->order(['model_disp', 'page_disp'])->select()->toArray();
        }
        $menuList = $this->arrayGroupBy($menuList, "model_name");
        return $menuList;
    }

    //获取当前用户ID
    public function getUid()
    {
        $session = session("admin");
        if (empty($session)) {
            return null;
        }
        if (xm_pwd_dec($session['uid'] . $session['login_ip'], $session['md5'])) {
            return $session['uid'];
        } else {
            $this->resetAdminInfo($session['uid']);
            session("admin", null);
            $this->error('请重新登录', url('login/loginList'));;
        }
    }

    //获取当前页面的模块信息
    protected function getModule()
    {
        $controller = strtolower(request()->controller());
        $action = strtolower(request()->action());
        $redis = new Redis();
        $module = $redis->hGet('module_info',strtolower($controller . "/" . $action));
        if(!$module){
            $model = model("admin_module");
            $module = $model->field("model_name,page_name,page_url,intro")->where(['page_url' => $controller . "/" . $action])->withAttr('page_url', function ($value) {
                return strtolower($value);
            })->find();
            if (empty($module)) {
                exit("ACCESS NOT DEFINED");
            }
            $moduleList = $model->field("model_name,page_name,page_url,intro")->where([])->withAttr('page_url', function ($value) {
                return strtolower($value);
            })->select();
            foreach ($moduleList as $k=>$v){
                $redis->hSet('module_info',$v['page_url'],json_encode($v));
            }
        }else{
            $module = json_decode($module,true);
        }
        $this->assign('module', $module);
    }

    protected function checkAccess()
    {
        $uid = $this->getUid();
        //获取用户权限
        $redis = new Redis();
        $moduleList = $redis->get('admin_access_list'.$uid);
        $moduleList = json_decode($moduleList,true);
        $access = [];
        $url = $this->getActionUrl();
        foreach ($moduleList as $k => $v) {
            $controller = explode("/", str_ireplace("list", "", $v['page_url']))[0];
            if ($controller !== $url['controller']) {
                continue;
            }
            $access[] = explode("/", str_ireplace("list", "", $v['page_url']))[1];
        }
        $count = 0;
        foreach ($access as $v) {
            $count += substr_count($url['action'], $v);
        }
        if (0 === $count) {
            exit("ACCESS NOT DEFINED");
        }
    }

    //数组分组方法
    public function arrayGroupBy($arr, $key)
    {
        $grouped = [];
        foreach ($arr as $value) {
            $grouped[$value[$key]][] = $value;
        }
        if (func_num_args() > 2) {
            $args = func_get_args();
            foreach ($grouped as $key => $value) {
                $parms = array_merge([$value], array_slice($args, 2, func_num_args()));
                $grouped[$key] = call_user_func_array('array_group_by', $parms);
            }
        }
        return $grouped;
    }

    protected function resetAdminInfo($uid)
    {
        $redis = new Redis();
        $redis->del('session_id'.$uid,'admin_ar_id'.$uid,'admin_access'.$uid,'admin_menu_list'.$uid,'module_info');
    }

    // 关闭iframe
    protected function iframeClose($msg)
    {
        echo "<script src=\"/static/layui/layui.all.js\"></script><script>layer.msg('$msg',{icon:2,time:500},function(){parent.location.reload()})</script>";
    }

    // 添加
    public function addAct($data, $model)
    {
        $rs = $model->save($data);
        if ($rs) {
            $this->success(lang('add success'));
        } else {
            $this->error(lang('add error'));
        }
    }

    /**
     * @param array $data 数据
     * @param object $model 模型
     */
    public function editAct($data, $model)
    {
        $rs = $model->isUpdate(true)->save($data);
        if ($rs) {
            $this->success(lang('edit success'));
        } else {
            $this->error(lang('edit error'));
        }
    }


    // 删除
    protected function delAct($id, $model)
    {
        $info = $model->field("id")->find($id);
        if (empty($info)) {
            $this->error(lang("data does not exist"));
        }
        if ($model->destroy($id)) {
            $this->success(lang("del success"));
        } else {
            $this->success(lang("del error"));
        }
    }

    // 多选删除
    protected function delAllAct($list, $model)
    {
        $rs = $model::destroy($list);
        if ($rs) {
            $this->success(lang("del success"));
        } else {
            $this->error(lang("del error"));
        }
    }
}
