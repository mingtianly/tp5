<?php
namespace app\index\controller;

use alipay\aop\request\AlipayTradeQueryRequest;
use app\common\controller\Alipay;
use think\Controller;
use think\facade\Env;
use think\facade\Log;

class Index extends Base
{
    public function index()
    {
        // if(isset($_POST['id'])){
        //     $alipay = new Alipay();
        //     $data = [
        //         'trade_no' => date('YmdHis').rand(100000,999999),
        //         'subject' => '测试商品',
        //         'amount' => '100.12'
        //     ];
        //     $alipay->AlipayTradeWapPayRequest($data);// 手机网站支付
        // }
        // dump(input());
        // return view();
    }


}
