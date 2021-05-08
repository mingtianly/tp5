<?php
namespace app\common\validate;

use think\Validate;

class AdminModule extends Common
{
    protected $rule = [
        'model_name|模块名' =>  'require|max:10',
        'model_disp|模块排序' =>  'require|number|max:99',
        'page_name|操作名' =>  'require|max:30',
        'page_disp|操作排序' =>  'require|number|max:99',
        'page_url|URL' =>  'require|max:30',
        'intro|操作说明' =>  'require|max:200',
    ];

}
