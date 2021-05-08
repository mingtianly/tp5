<?php


namespace app\api\controller;


use app\common\controller\Alipay;

class Pay extends Base
{
    // 支付宝支付
    public function alipay()
    {
        $alipay = new Alipay();

        $data = [
            'trade_no' => date('YmdHis').rand(100000,999999),
            'subject' => '测试商品',
            'amount' => '0.01'
        ];
        // $rs = $alipay->AlipayTradePrecreateRequest($data);//qr_code
        // $rs = $alipay->AlipayTradePagePayRequest($data);// 网页支付
        // $rs = $alipay->AlipayTradeWapPayRequest($data);// 手机网站支付
        // $rs = $alipay->AlipayTradeAppPayRequest ($data);// app支付
        $data = [
            'out_trade_no' => '20210123110918465935',
            // 'refund_amount' => 0.01
        ];
        // $rs = $alipay->AlipayTradeRefundRequest ($data);// 退款
        $rs = $alipay->AlipayTradeQueryRequest ($data);// 查询
        return json($rs);
    }
}
