<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class MoneyB extends Common
{
    use SoftDelete;
    protected $pk = 'mb_id';
    protected $createTime = 'mb_create_time';
    protected $updateTime = 'mb_update_time';
    protected $deleteTime = 'mb_delete_time';
    const TABLE_NAME = "用户积分表";

    //监控操作
    protected static function init()
    {
        self::getSqlAction(self::TABLE_NAME);
    }
}
