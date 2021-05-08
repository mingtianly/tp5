<?php
namespace app\common\controller;

class Redis extends \Redis
{
    /**
     * 全局redis KEY 定义
     * session_id.uid 后台用户session_id
     * admin_ar_id.uid 后台用户权限id
     * admin_access.uid 后台用户权限
     * admin_menu_list.uid 后台用户模块
     * module_info 模块信息
     */


    public function __construct()
    {
        $this->connect(config('redis.host'), config('redis.port'));
        $this->auth(config('redis.password'));
        $this->select(config('redis.select'));
        return $this;
    }

    public function __destruct()
    {
        // $this->save();
    }
}
