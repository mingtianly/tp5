<?php
namespace app\common\validate;

use think\Validate;

class AdminUser extends Common
{
    protected $rule = [
        'name|用户名' =>  'require|max:30|unique:admin_user',
        'nick_name|姓名' =>  'require|max:30',
        'password|密码' =>  'require|checkData:password|confirm:password2',
        'ar_id|所属角色' =>  'require|max:32|number',
        'phone|手机号' =>  'checkData:phone',
        'email|邮箱' =>  'checkData:email',
        'intro|备注' =>  'max:100',
        'is_frozen|冻结状态' =>  'bool',
    ];

    protected $scene = [
        "edit"=>["name","ar_id","nick_name","phone","email","intro"],
        "editPwd"=>["password"],
    ];

}
