<?php
function X($str,$type = "pt"){
    $config   = \HTMLPurifier_Config::createDefault();
    $html_purifier = new \HTMLPurifier($config);
    $str = $html_purifier->purify(trim($str));
    $safeStr = str_ireplace("javascript:","java script:",$str);
    return $safeStr;
}
//获取input数据
function I($param = null,$default = null){

    $data = input($param,$default);
    if(is_array($data)){
        foreach($data as $k=>$v){
            if(is_array($v)){
                $data[$k] = iArray($v);
            }else{
                $data[$k] = X($v);
            }
        }
    }else if(is_string($data)){
        $data = X($data);
    }else{

    }
    return $data;
}
function iArray($array = [])
{
    foreach ($array as $k=>$v){
        if(is_array($v)){
            $array[$k] =  iArray($v);
        }else{
            $array[$k] = X($v);
        }
    }
    return $array;
}

/**
 * 密码加密
 * @param $password
 * @return string length 60
 */
function xm_pwd($password){
    $pwd = password_hash($password,PASSWORD_DEFAULT);
    return $pwd;

}

/**
 * 密码比对
 * @param $password
 * @param $hash
 * @return bool
 */
function xm_pwd_dec($password,$hash){
    if(password_verify($password,$hash)){
        return true;
    }else{
        return false;
    }
}

/**
 * @param string $str 要匹配的字符串
 * @param string $type 匹配的字符串类型
 * @return false|int
 */
function regvali($str,$type){
    return preg_match(reg($type),$str);
}

/**
 * @param $type
 * @return string
 */
function reg($type)
{
    $type = urlencode($type);
    switch ($type) {
        case "cardID":
            $reg = "/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/";
            return $reg;
            break;
        case "phone":
            $reg = "/^1[3456789]\d{9}$/";
            return $reg;
            break;
        case "email":
            $reg = "/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/";
            return $reg;
            break;
        case "tel":
            $reg = "/\d{3}-\d{8}|\d{4}-\d{7}/";
            return $reg;
            break;
        case "qq":
            $reg = "/[1-9][0-9]{4,}/";
            return $reg;
            break;
        case "chinese":
            $reg = "/[\u4e00-\u9fa5]{1,}/";
            return $reg;
            break;
        case "money":
            $reg = "/(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]([0-9])?$)/";
            return $reg;
            break;
        case "username":
            $reg = "/^[a-zA-Z][a-zA-Z0-9_]{4,15}$/";
            return $reg;
            break;
        case "password":
            $reg = "/^(?=.*\d)(?=.*[a-zA-Z])(?=.*[\W])[\da-zA-Z\W]{6,}$/";
            return $reg;
            break;
        case "post":
            $reg = "/\d{6}(?!\d)/";
            return $reg;
            break;
        case "+money":
            $reg = "/^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$/";
            return $reg;
            break;
        case "-money":
            $reg = "/^-[1-9]\d*\.\d*|-0\.\d*[1-9]\d*$/";
            return $reg;
            break;
        case "date":
            $reg = "/([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))/";
            return $reg;
            break;
        case "url":
            $reg = "/(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/";
            return $reg;
            break;
        case "ip":
            $reg = "/(25[0-5]|2[0-4]\d|[0-1]\d{2}|[1-9]?\d)\.(25[0-5]|2[0-4]\d|[0-1]\d{2}|[1-9]?\d)\.(25[0-5]|2[0-4]\d|[0-1]\d{2}|[1-9]?\d)\.(25[0-5]|2[0-4]\d|[0-1]\d{2}|[1-9]?\d)/";
            return $reg;
            break;
        case "wx":
            //TODO 微信号规则比较复杂，有手机号，QQ号，邮箱号……总之不能有汉字，且最长不超过20位
            $reg = "/^[A-Za-z0-9\_\-\@\.]{6,20}$/";
            return $reg;
            break;
        case "alipay":
            $reg = "/^(?:\w+\.?)*\w+@(?:\w+\.)+\w+|\d{9,11}$/";
            return $reg;
            break;
        case "bank":
            $reg = "/[0-9]{14,19}/";//信用卡 14，16 借记卡19
            return $reg;
            break;
        case "address":
            $reg = "/([^\x00-\xff]|[A-Za-z0-9\_\-])+/";
            return $reg;
            break;
        default:
            return "";
            break;
    }
}
