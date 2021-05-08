<?php


namespace app\admin\controller;


use app\common\controller\Redis;
use think\Db;

class Login extends Base
{
    public function login()
    {
        $uid = $this->getUid();
        if($uid){
            $this->redirect('Index/index');
        }
        $this->cancelLayout();
        return view();
    }

    public function loginAct()
    {
        $data = I();
        if(true !== captcha_check($data['code'])){
            $this->error(lang("captcha").lang("wrong"));
        }
        $model = model("admin_user");
        $info = $model->where(['name'=>$data['name']])->find();
        $nowErrorCount = model("login_error")->where("le_login_ip","=",request()->ip())->whereTime("le_create_time",">=",(time()-config("my.login_frozen_time")*3600))->count();
        $errorNum = config("my.login_error_num");
        if($nowErrorCount >= $errorNum){
            $this->error("尝试登陆次数过多，请".config("my.login_frozen_time")."小时后重试");
        }
        if(true !== xm_pwd_dec($data['password'],$info['password'])){
            //密码错误，记录登陆用户的用户名，密码，和IP
            $errorData = [
                "le_user_name"=>$data['name'],
                "le_password"=>$data['password'],
                "le_login_ip"=>request()->ip(),
            ];
            model("login_error")->isUpdate(false)->save($errorData);
            $this->error("密码错误，请重新输入!您还可尝试".($errorNum-$nowErrorCount)."次");
        }else{
            if($info['is_frozen'] > 0){
                $this->error("用户处于冻结状态，无法登陆","Login/Login");
            }else{
                //登陆成功，设置IP，SESSION,登陆次数
                $saveData = [
                    "session_id"=>xm_pwd(session_id()),
                    "last_ip"=>$info['login_ip'],
                    "login_ip"=>request()->ip(),
                    "login_num"=>$info['login_num']+1,
                ];
                $sessionData = [
                    "uid"=>$info['id'],
                    "name"=>$info['name'],
                    "last_login_time"=>time(),
                    "login_ip"=>request()->ip(),
                    "login_time"=>time(),
                ];
                $sessionData['md5'] = xm_pwd($sessionData['uid'].$sessionData['login_ip']);
                session("admin",$sessionData);
                Db::table("admin_user")->where(['id'=>$info['id']])->update($saveData);
                //登陆成功，记录登陆记录
                $LoginData = [
                    "aa_table_name"=>"管理员登陆日志",
                    "aa_action"=>"4",
                    "aa_admin_uid"=>session("admin.uid")??0,
                    "aa_ip"=>request()->ip(),
                    "aa_data"=>"",
                    "aa_update_time"=>time(),
                    "aa_create_time"=>time(),
                ];
                Db::table("admin_action")->insert($LoginData);
                $this->success(lang("login").lang("success"));
            }
        }
    }

    //退出登陆页面
    public function logout()
    {
        $uid = session('admin.uid');
        $redis = new Redis();
        $redis->del('session_id'.$uid,'admin_ar_id'.$uid,'admin_access'.$uid,'admin_menu_list'.$uid,'module_info');
        session("admin",null);
        $this->redirect("Login/login");
    }
}
