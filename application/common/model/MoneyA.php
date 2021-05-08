<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class MoneyA extends Common
{
    use SoftDelete;
    protected $pk = 'ma_id';
    protected $createTime = 'ma_create_time';
    protected $updateTime = 'ma_update_time';
    protected $deleteTime = 'ma_delete_time';
    const TABLE_NAME = "用户余额表";

    //监控操作
    protected static function init()
    {
        self::getSqlAction(self::TABLE_NAME);
    }
}
