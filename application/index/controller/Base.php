<?php


namespace app\index\controller;


use app\common\controller\Common;
use think\facade\Env;
use think\facade\Log;

class Base extends Common
{
    protected $beforeActionList = [
        "logUrl" =>  ['except'=>'auto,test,notify'],
        "cancelLayout",
        "allowCross",
    ];

    public function logUrl()
    {
        // Log::init(['type' => 'File', 'path' => Env::get('app.path') . '../runtime/hello/']);
    }
    //允许跨域
    protected function allowCross()
    {
        header('Content-Type: text/html;charset=utf-8');
        header('Access-Control-Allow-Origin:*'); // *代表允许任何网址请求
        header('Access-Control-Allow-Methods:*'); // 允许请求的类型
        header('Access-Control-Allow-Credentials: true'); // 设置是否允许发送 cookies
        header('Access-Control-Allow-Headers: *'); // 设置允许自定义请求头的字段
    }
    //取消模板引擎
    protected function cancelLayout()
    {
        $this->view->engine->layout(false);
    }
}
