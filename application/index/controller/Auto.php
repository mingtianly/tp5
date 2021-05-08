<?php

namespace app\Index\controller;

use app\common\controller\Redis;
use think\Controller;
use think\Db;
use think\facade\Env;
use think\facade\Log;
use think\Request;

class Auto extends Base
{
    public function auto()
    {
        $redis = new Redis();


    }

    public function notify()
    {
        Log::init(['type' => 'File', 'path' => Env::get('app.path') . '../runtime/notify/']);
        return 'SUCCESS';
    }
}
