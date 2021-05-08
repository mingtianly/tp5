<?php
namespace app\common\validate;

use think\Validate;

class User extends Common
{
    protected $rule = [
        'name|用户名' =>  'require|max:30|unique:user',
        'nick_name|姓名' =>  'max:30',
        // 'password|密码' =>  'checkData:password|confirm:password2',
        'phone|手机号' =>  'checkData:phone|unique:user',
    ];

    protected $scene = [
        "edit"=>["name"],
        "editPwd"=>["password"],
    ];

}
