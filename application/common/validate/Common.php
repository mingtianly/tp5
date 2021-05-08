<?php
namespace app\common\validate;

use think\Validate;

class Common extends Validate
{
    /*
     * 'name'=>'require'
     * 'num'=>'number' //不包括负数和小数点
     * 'num'=>'integer'
     * 'num'=>'float'
     * 'num'=>'boolean'
     * 'email'=>'email'
     * 'info'=>'array'
     * 'accept'=>'accepted'
     * 'date'=>'date'
     * 'name'=>'alpha' //纯字母
     * 'name'=>'alphaNum' //字母数字
     * 'name'=>'alphaDash' //字母数字-_
     * 'name'=>'chs' //汉字
     * 'name'=>'chsAlpha' //汉字字母
     * 'name'=>'chsAlphaNum' //汉字字母数字
     * 'name'=>'chsDash' //汉字字母数字-_
     * 'name'=>'cntrl' //换行 缩进 空格
     * 'name'=>'graph' //可打印字符，空格除外
     * 'name'=>'print' //可打印字符，包括空格
     * 'name'=>'lower' //小写字母
     * 'name'=>'upper' //大写字母
     * 'name'=>'space' //换行 回车 缩进 换页 垂直制表符
     * 'name'=>'xdigit' //16进制字符串
     * 'host'=>'activeUrl' //有效域名或IP
     * 'url'=>'url' //URL
     * 'ip'=>'ip' //ip
     * 'create_time'=>'dateFormat:y-m-d' //指定日期格式
     * 'mobile'=>'mobile'  //手机
     * 'id_card'=>'idCard' //身份证
     * 'mac'=>'macAddr' //MAC地址
     * 'zip'=>'zip' //邮编
     * 'num'=>'in:1,2,3'
     * 'num'=>'notIn:1,2,3'
     * 'num'=>'between:1,10'
     * 'num'=>'notBetween:1,10'
     * 'name'=>'length:4,25'
     * 'name'=>'length:4,25'
     * 'name'=>'length:4' //数组判断长度，文件判断大小
     * 'name'=>'max:25'
     * 'name'=>'min:5'
     * 'begin_time' => 'after:2016-3-18',  //某日期之后
     * 'end_time'   => 'before:2016-10-01',  //某日期之前
     * 'expire_time'   => 'expire:2016-2-1,2016-10-01', //某个有效期之内
     * 'name'   => 'allowIp:114.45.4.55,192.168.1.1',  //允许IP，多个，分割
     * 'name'   => 'denyIp:114.45.4.55',  //禁止IP
     * 'repassword'=>'require|confirm:password' //验证某个字段是否和另外一个字段的值一致
     * 'name'=>'require|different:account'  //不一致
     * 'score'=>'eq:100' //等于  gt egt lt elt
     * 'price'=>'lt:market_price'  //比较字段
     * 'name'   => 'unique:user,account,10,user_id', //验证当前请求的字段值是否为唯一的  unique:table,field,except,pk
     */

    // 自定义正则规则验证
    protected function checkData($value,$rule,$data,$data2,$data3)
    {
        $rs = regvali($value,$rule);
        if(1 !== $rs){
            return $data3 . "格式错误";
        }else{
            return true;
        }
    }
}