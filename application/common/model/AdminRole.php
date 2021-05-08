<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class AdminRole extends Common
{
    use SoftDelete;
    protected $pk = 'id';
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';
    protected $deleteTime = 'delete_time';
    const TABLE_NAME = "用户角色表";

    //监控操作
    protected static function init()
    {
        self::getSqlAction(self::TABLE_NAME);
    }
}
