<?php

namespace app\api\controller;

use think\Controller;
use think\Db;
use think\Request;

class Base extends Controller
{
    protected $tokenName = 'openid';
    protected $uid = null;
    protected $openid = null;

    protected $beforeActionList = [
        "checkLogin" =>  ['except'=>'auto,test,notify'],
    ];

    protected function checkLogin()
    {
        $token = request()->header($this->tokenName);
        if($token == ''){
            $this->error('请重新登录','',402);
        }
        $this->uid = 1;
    }

    public function getUid()
    {
        return $this->uid;
    }
}
