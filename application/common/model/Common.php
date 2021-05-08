<?php

namespace app\common\model;

use think\Db;
use think\facade\Env;
use think\Log;
use think\Model;

class Common extends Model
{
    //记录Sql
    protected static function getSqlAction($tableName)
    {
        //监听新增操作
        static::beforeInsert(function ($data) use ($tableName) {
            $saveData = [
                "aa_table_name"=>$tableName,
                "aa_action"=>"1",
                "aa_admin_uid"=>session("admin.uid")??0,
                "aa_uid"=>session("home.uid")??0,
                "aa_ip"=>request()->ip(),
                "aa_data"=>json_encode($data),
                "aa_update_time"=>time(),
                "aa_create_time"=>time(),
            ];
            \think\facade\Log::init(['type'=>'File','path'=>Env::get('app.path').'../runtime/log/sql/insert/']);
            \think\facade\Log::info($saveData);
            if($saveData['aa_admin_uid'] && $saveData['aa_uid']){
                return true; //结算软件干的
            }else{
                Db::table("admin_action")->insert($saveData);
            }
        });

        //监听修改操作
        static::beforeUpdate(function ($data) use ($tableName) {
            $saveData = [
                "aa_table_name"=>$tableName,
                "aa_action"=>"2",
                "aa_admin_uid"=>session("admin.uid")??0,
                "aa_uid"=>session("home.uid")??0,
                "aa_ip"=>request()->ip(),
                "aa_data"=>json_encode($data),
                "aa_update_time"=>time(),
                "aa_create_time"=>time(),
            ];
            \think\facade\Log::init(['type'=>'File','path'=>Env::get('app.path').'../runtime/log/sql/update/']);
            \think\facade\Log::info($saveData);
            if($saveData['aa_admin_uid'] && $saveData['aa_uid']){
                return true; //结算软件干的
            }else{
                Db::table("admin_action")->insert($saveData);
            }
        });

        //监听删除操作
        static::beforeDelete(function ($data) use ($tableName) {
            $saveData = [
                "aa_table_name"=>$tableName,
                "aa_action"=>"3",
                "aa_admin_uid"=>session("admin.uid")??0,
                "aa_uid"=>session("home.uid")??0,
                "aa_ip"=>request()->ip(),
                "aa_data"=>json_encode($data),
                "aa_update_time"=>time(),
                "aa_create_time"=>time(),
            ];
            \think\facade\Log::init(['type'=>'File','path'=>Env::get('app.path').'../runtime/log/sql/delete/']);
            \think\facade\Log::info($saveData);
            if($saveData['aa_admin_uid'] && $saveData['aa_uid']){
                return true; //结算软件干的
            }else{
                Db::table("admin_action")->insert($saveData);
            }
        });
    }
}