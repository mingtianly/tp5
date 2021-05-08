<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class LoginError extends Common
{
    use SoftDelete;
    protected $pk = 'le_id';
    protected $createTime = 'le_create_time';
    protected $updateTime = 'le_update_time';
    protected $deleteTime = 'le_delete_time';
    const TABLE_NAME = "登陆错误日志";

}