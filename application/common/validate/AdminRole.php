<?php
namespace app\common\validate;

use think\Validate;

class AdminRole extends Common
{
    protected $rule = [
        'name|角色名' =>  'require|max:10',
        'intro|角色备注' =>  'max:200',
        'access|角色权限' =>  'require|max:500',
    ];
}
