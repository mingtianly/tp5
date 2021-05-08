<?php
namespace app\common\validate;

use think\Validate;

class NewsStatic extends Common
{
    protected $rule = [
        'title|标题' =>  'require|max:200',
        'type|类型' =>  'require|number',
        'intro|简介' =>  'max:500',
        'content|内容' =>  'require',
    ];
}
