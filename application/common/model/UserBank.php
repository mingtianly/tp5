<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class UserBank extends Common
{
    use SoftDelete;
    protected $pk = 'id';
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';
    protected $deleteTime = 'delete_time';
    const TABLE_NAME = "用户财务明细表";


    //获取器
    public function getStateAttr($value)
    {
        $status = config("type.bank_state");
        if(isset($status[$value])){
            return $status[$value];
        }else{
            return "";
        }
    }


    //获取器
    public function getTypeAttr($value)
    {
        $status = config("type.bank_type");
        if(isset($status[$value])){
            return $status[$value];
        }else{
            return "";
        }
    }

    //获取器
    public function getMoneyTypeAttr($value)
    {
        $status = config("type.user_money_type");
        if(isset($status[$value])){
            return $status[$value];
        }else{
            return "";
        }
    }

    //监控操作
    protected static function init()
    {
        self::getSqlAction(self::TABLE_NAME);
    }

}
