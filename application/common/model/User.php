<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class User extends Common
{
    use SoftDelete;
    protected $pk = 'id';
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';
    protected $deleteTime = 'delete_time';
    const TABLE_NAME = "用户表";

    //获取器
    public function getTypeAttr($value)
    {
        $status = config("type.user_type");
        return $status[$value];
    }

    //监控操作
    protected static function init()
    {
        self::getSqlAction(self::TABLE_NAME);
    }
}
