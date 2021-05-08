<?php


namespace app\admin\controller;

use app\common\model\WebConfig;
use think\Db;
use think\facade\Env;

class System extends Base
{
    // ------------------------------------ 网站配置管理开始 ------------------------------------
    /**
     * 网站配置
     */
    public function configList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 设置网站配置执行
     */
    public function setConfigAct()
    {
        $data = I();
        $data['my']['on_money_a'] = isset($data['my']['on_money_a']) ? 1 : 0;
        $data['my']['on_money_b'] = isset($data['my']['on_money_b']) ? 1 : 0;
        $return = true;
        foreach ($data as $k=>$v){
            $return = $this->setConfig($v,$k);
        }
        if($return){
            $this->success(lang("edit success"));
        }else{
            $this->error(lang("edit error"));
        }
    }

    /**
     * 多文件修改配置
     * @param array $data 数组
     * @param string $type 类型
     * @return bool
     */
    private function setConfig($data,$type)
    {
        $conf = config($type.'.');
        foreach($data as $k=>$v){
            $conf[$k] = $v;
        }
        $config_file = Env::get('app.path').'../config/'.$type.'.php';
        if (is_writable ( $config_file )) {
            file_put_contents ( $config_file, "<?php \nreturn " . stripslashes ( var_export ( $conf, true ) ) . ";", LOCK_EX );
            return true;
        }else{
            return false;
        }
    }

    // ------------------------------------ 网站配置管理结束 ------------------------------------


    // ------------------------------------ 操作日志管理开始 ------------------------------------

    /**
     * 操作日志
     */
    public function logList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取操作日志记录
     */
    public function ajaxGetLogList()
    {
        $list = $this->ajaxGetList("admin_action","aa_id,aa_table_name,aa_action,aa_uid,aa_admin_uid,aa_ip,aa_data,aa_create_time",["aa_create_time"=>"desc"]);
        $action = config("type.action");
        foreach ($list['data'] as $k=>$v){
            $list['data'][$k]['aa_action'] = $action[$v['aa_action']]??"";
            if($v['aa_uid']){
                $userName = @Db::table("user")->field("name")->find($v['id'])['name'] ?? "";
                $list['data'][$k]['aa_uid'] = $userName ?? "";
                $list['data'][$k]['aa_admin_uid'] = "";
            }else{
                $userName = Db::table("admin_user")->field("name")->find($v['aa_admin_uid'])['name'];
                $list['data'][$k]['aa_admin_uid'] = $userName??"";
                $list['data'][$k]['aa_uid'] = "";
            }
        }
        return $this->ajaxReturn($list);
    }
    // ------------------------------------ 操作日志管理结束 ------------------------------------

    // ------------------------------------ 网站图片上传开始 ------------------------------------
    /**
     * 网站上传图片
     */
    public function imgList()
    {
        $this->getModule();
        $info = WebConfig::find();
        $info['lb'] = explode(';',$info['lb']);
        $this->assign('info',$info);
        return view();
    }

    /**
     * 上传网站LOGO执行
     */
    public function uploadLogoAct()
    {
        $data = I();
        $rs = WebConfig::where('id',1)->update($data);
        if($rs){
            $this->success('上传成功');
        }else{
            $this->error('上传失败');
        }
    }

    /**
     * 上传网站轮播图执行
     */
    public function setUploadLbAct()
    {
        $data = I();
        if(!$data['images']){
            $this->error('请上传轮播图');
        }
        $rs = WebConfig::where('id',1)->update(['lb'=>implode(';',$data['images'])]);
        if($rs){
            $this->success('上传成功');
        }else{
            $this->error('上传失败');
        }
    }
    // ------------------------------------ 网站图片上传结束 ------------------------------------

}
