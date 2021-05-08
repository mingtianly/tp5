<?php

namespace app\admin\controller;

use app\common\model\AdminModule;
use app\common\model\AdminRole;
use app\common\model\AdminUser;
use think\Controller;
use think\process\pipes\Windows;
use think\Request;

class Access extends Base
{
    // ------------------------------------ 模块管理开始 ------------------------------------

    /**
     * 模块展示页
     * @return \think\response\View
     */
    public function moduleList()
    {
        $this->getModule();
        return view();
    }

    public function icon()
    {
        $this->cancelLayout();
        return view();
    }
    /**
     * 获取模块列表
     * @return \think\response\Json
     */
    public function ajaxGetModuleList()
    {
        $list = $this->ajaxGetList('admin_module','*',['model_disp'=>'asc']);
        return $this->ajaxReturn($list);
    }

    /**
     * 添加模块
     * @return \think\response\View
     */
    public function addModule()
    {
        $this->cancelLayout();
        $id = I('id/d',0);
        if($id){
            $info = AdminModule::where('id',$id)->find();
            if(empty($info)){
                $this->iframeClose('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        return view();

    }

    /**
     * 添加模块执行
     */
    public function addModuleAct()
    {
        $data = I();
        $validate = new \app\common\validate\AdminModule();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminModule();
        $this->resetAdminInfo($this->getUid());
        $this->addAct($data,$model);
    }

    /**
     * 修改模块执行
     */
    public function editModuleAct()
    {
        $data = I();
        $validate = new \app\common\validate\AdminModule();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminModule();
        $this->resetAdminInfo($this->getUid());
        $this->editAct($data,$model);
    }

    /**
     * 监听切换执行
     */
    public function switchModuleAct()
    {
        $data = I();
        $model = new AdminModule();
        if($model->isUpdate(true)->save($data)){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 批量修改状态执行
     */
    public function setStateModuleAct()
    {
        $data = I('list');
        $model = new AdminModule();
        $rs = $model->saveAll($data);
        if($rs){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 删除模块执行
     */
    public function delModuleAct()
    {
        $id = I("id/d",0);
        $model = new AdminModule();
        $this->resetAdminInfo($this->getUid());
        $this->delAct($id,$model);
    }

    /**
     * 多选删除模块执行
     */
    public function delModuleAllAct()
    {
        $list = I('list/a');
        $model = new AdminModule();
        $this->resetAdminInfo($this->getUid());
        $this->delAllAct($list,$model);
    }

    // ------------------------------------ 模块管理结束 ------------------------------------

    // ------------------------------------ 角色管理开始 ------------------------------------

    /**
     * 角色展示页
     * @return \think\response\View
     */
    public function roleList()
    {
        $this->getModule();
        return view();
    }

    public function getRoleIdList()
    {
        $id = I('id/d','');
        $roleList = $this->getLeftMenu(1);
        $roleListTree = [];
        $i = 0;
        foreach ($roleList as $k=>$v){
            $children = [];
            foreach ($v as $k1=>$v2){
                $children[] = [
                    'id' => $v2['id'],
                    'title' => $v2['page_name'],
                    'spread' => true,
                ];
            }
            $roleListTree[] = [
                'id' => 'F'.$i,
                'title' => $k,
                'spread' => false,
                'children' => $children
            ];
            $i++;
        }
        return $roleListTree;
    }

    /**
     * 获取角色列表
     * @return \think\response\Json
     */
    public function ajaxGetRoleList()
    {
        $list = $this->ajaxGetList('admin_role','*',[]);
        return $this->ajaxReturn($list);
    }

    /**
     * 添加角色
     * @return \think\response\View
     */
    public function addRole()
    {
        $this->cancelLayout();
        $id = I('id/d',0);
        if($id){
            $info = AdminRole::where('id',$id)->find();
            if(empty($info)){
                $this->iframeClose('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        return view();
    }

    /**
     * 添加角色执行
     */
    public function addRoleAct()
    {
        $data = I();
        $validate = new \app\common\validate\AdminRole();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminRole();
        $this->addAct($data,$model);
    }

    /**
     * 修改角色执行
     */
    public function editRoleAct()
    {
        $data = I();
        $validate = new \app\common\validate\AdminRole();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminRole();
        $this->resetAdminInfo($this->getUid());
        $this->editAct($data,$model);
    }

    /**
     * 删除角色执行
     */
    public function delRoleAct()
    {
        $id = I("id/d",0);
        $model = model("admin_role");
        $this->resetAdminInfo($this->getUid());
        $this->delAct($id,$model);
    }

    /**
     * 多选删除角色执行
     */
    public function delRoleAllAct()
    {
        $list = I('list/a');
        $model = new AdminRole();
        $this->delAllAct($list,$model);
    }

    // ------------------------------------ 角色管理结束 ------------------------------------


    // ------------------------------------ 管理员管理开始 ------------------------------------

    /**
     * 管理员展示页
     * @return \think\response\View
     */
    public function adminList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取管理员列表
     * @return \think\response\Json
     */
    public function ajaxGetAdminList()
    {
        $list = $this->ajaxGetList('admin_user','admin_user.*,r.name ar_name',['id'=>'asc'],[],['admin_role r','admin_user.ar_id = r.id']);
        return $this->ajaxReturn($list);
    }

    /**
     * 添加管理员
     * @return \think\response\View
     */
    public function addAdmin()
    {
        $this->cancelLayout();
        $id = I('id/d',0);
        if($id){
            $info = AdminUser::where('id',$id)->find();
            if(empty($info)){
                $this->iframeClose('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        // 获取角色列表
        $roleList = model("admin_role")->field("id,name")->select();
        $this->assign("roleList",$roleList);
        return view();

    }

    /**
     * 添加管理员执行
     */
    public function addAdminAct()
    {
        $data = I();
        if(!regvali($data['password'],"password")){
            $this->error("密码强度弱，必须是包含字母数字及特殊字符的8位以上密码");
        }
        $validate = new \app\common\validate\AdminUser();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $data['password'] = xm_pwd($data['password']);
        $model = new AdminUser();
        $this->resetAdminInfo($this->getUid());
        $this->addAct($data,$model);
    }

    /**
     * 修改管理员执行
     */
    public function editAdminAct()
    {
        $data = I();
        if($data['password']){
            if(!regvali($data['password'],"password")){
                $this->error("密码强度弱，必须是包含字母数字及特殊字符的8位以上密码");
            }
            if($data['password'] !== $data['password2']){
                $this->error("密码不一致");
            }
            $data["password"] = xm_pwd($data['password']);
        }
        $validate = new \app\common\validate\AdminUser();
        if(!$validate->scene('edit')->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminUser();
        $this->resetAdminInfo($this->getUid());
        $this->editAct($data,$model);
    }

    /**
     * 监听切换执行
     */
    public function switchAdminAct()
    {
        $data = I();
        $model = new AdminUser();
        if($model->isUpdate(true)->save($data)){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 批量修改状态执行
     */
    public function setStateAdminAllAct()
    {
        $data = I('list');
        $model = new AdminUser();
        $rs = $model->saveAll($data);
        if($rs){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 删除管理员执行
     */
    public function delAdminAct()
    {
        $id = I("id/d",0);
        $model = new AdminUser();
        $this->delAct($id,$model);
    }

    /**
     * 多选删除管理员执行
     */
    public function delAdminAllAct()
    {
        $list = I('list/a');
        $model = new AdminUser();
        $this->delAllAct($list,$model);
    }

    // ------------------------------------ 管理员管理结束 ------------------------------------


    // ------------------------------------ 修改密码管理开始 ------------------------------------

    /**
     * 修改密码
     * @return \think\response\View
     */
    public function changeList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 修改密码执行
     */
    public function editChangeAct()
    {
        $uid = $this->getUid();
        $data = I();
        $vali = validate("admin_user");
        if(!$vali->scene("editPwd")->check($data)){
            $this->error($vali->getError());
        }
        $adminInfo = AdminUser::field("password")->get($uid);
        $opwd = $adminInfo->password;
        if(!xm_pwd_dec($data['password_o'],$opwd)){
            $this->error("原始密码错误");
        }
        $adminInfo->password = xm_pwd($data['password']);
        $rs = $adminInfo->save();
        if($rs){
            $this->success(lang("edit success"));
        }else{
            $this->success(lang("edit error"));
        }
    }

    // ------------------------------------ 修改密码管理结束 ------------------------------------


    // ------------------------------------ 重置管理开始 ------------------------------------

    /**
     * 重置密码
     * @return \think\response\View
     */
    public function resetList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 重置密码执行
     */
    public function resetAct()
    {
        $data = I();
        $vali = validate("admin_user");
        if(!$vali->scene("editPwd")->check($data)){
            $this->error($vali->getError());
        }
        $adminInfo = AdminUser::where(['name'=>$data['name']])->field("password")->find();
        if(empty($adminInfo)){
            $this->error('用户不存在');
        }
        $adminInfo->password = xm_pwd($data['password']);
        $rs = $adminInfo->save();
        if($rs){
            $this->success(lang("edit success"));
        }else{
            $this->success(lang("edit error"));
        }
    }

    // ------------------------------------ 重置管理结束 ------------------------------------

}
