<?php
namespace app\admin\controller;

use app\common\model\AdminUser;
use think\Db;

class Uploads extends Base
{
    //-----------------------------------图片上传模块开始-----------------------------------
    /**
     * 上传图片
     */
    public function uploadAct()
    {
        $filename = $this->uploadsImg("file");
        if(!strstr($filename,'g')){
            $this->error($filename);
        }
        $webUrl = $_SERVER['REQUEST_SCHEME'].'://'.$this->request->host(false);
        $url = "/uploads/".str_replace("\\","/",$filename);
        $this->success('上传成功',$url);
    }

    /**
     * 上传文件
     */
    public function uploadFileAct()
    {
        $this->uploadsFile("file");
        $this->success('上传成功');
    }
    //-----------------------------------图片上传模块结束-----------------------------------


    //-----------------------------------编辑器上传模块开始-----------------------------------
    /**
     * 编辑器上传图片
     * @return \think\response\Json
     */
    public function editorUploadAct()
    {
        $this->cancelLayout();
        $filename = $this->uploadsImg("file");
        if(!strstr($filename,'g')){
            return json(['errno'=>1,'msg'=>$filename]);
        }
        $webUrl = $_SERVER['REQUEST_SCHEME'].'://'.$this->request->host(false);
        $url = "/uploads/".str_replace("\\","/",$filename);

        // wangEditor 返回格式
        $returnData = [
            "errno" => 0,
            "data"=>[
                $url,
            ]
        ];
        return json($returnData);

        // layui 返回格式
        // $this->error('上传成功',['src'=>$url]);
    }

    //-----------------------------------编辑器上传模块结束-----------------------------------
}
