<?php


namespace app\admin\controller;


use think\Controller;

class Download extends Controller
{
    public function file()
    {
        $url = I('url/s','');
        if($url == ''){
            $this->redirect('/');
        }
        $info = \app\common\model\Resource::where('url',$url)->find();
        if(!$info){
            return '文件不存在';
        }
        $file_url = ".".$info['url'];
        $out_filename = $info['name'];
        if (!file_exists($file_url)) {
            return '文件不存在';
        } else {
            header('Accept-Ranges: bytes');
            header('Accept-Length: ' . filesize($file_url));
            header('Content-Transfer-Encoding: binary');
            header('Content-type: application/octet-stream');
            header('Content-Disposition: attachment; filename=' . $out_filename);
            header('Content-Type: application/octet-stream; name=' . $out_filename);
            if (is_file($file_url) && is_readable($file_url)) {
                $file = fopen($file_url, "r");
                echo fread($file, filesize($file_url));
                fclose($file);
            }else{
                $this->redirect('/');
            }
        }
    }
}
