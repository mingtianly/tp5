<?php

namespace app\api\controller;

use think\Controller;
use think\Db;
use think\Request;

class Auto extends Base
{
    public function auto()
    {
        $config = config('my.');

        dump($config);
    }
}
