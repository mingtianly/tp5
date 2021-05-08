<?php

namespace app\common\controller;

use alipay\aop\AopClient;
use alipay\aop\request\AlipayTradeAppPayRequest;
use alipay\aop\request\AlipayTradePagePayRequest;
use alipay\aop\request\AlipayTradePayRequest;
use alipay\aop\request\AlipayTradePrecreateRequest;
use alipay\aop\request\AlipayTradeQueryRequest;
use alipay\aop\request\AlipayTradeRefundRequest;
use alipay\aop\request\AlipayTradeWapPayRequest;
use think\App;
use think\Controller;
use think\Db;

class Alipay extends Controller
{
    protected $pid = ''; //pid

    protected $appId = ''; //app_id

    protected $gatewayUrl = ''; //网关

    protected $notifyUrl = ''; //回调地址

    protected $returnUrl = ''; //返回地址

    protected $rsaPrivateKey = ''; //应用私钥

    protected $alipayrsaPublicKey = ''; //支付宝公钥

    /**
     * Alipay constructor.
     */
    public function __construct()
    {
        $config = config('alipay.');

        $this->pid = $config['pid'];
        $this->notifyUrl = $config['notify_url'];
        $this->returnUrl = $config['return_url'];
        $this->gatewayUrl = $config['gateway_url'];
        $this->appId = $config['app_id'];
        $this->rsaPrivateKey = $config['merchant_private_key'];
        $this->alipayrsaPublicKey = $config['alipay_public_key'];
    }

    // app支付
    public function AlipayTradeAppPayRequest ($data)
    {
        $aop = $this->getAopClient();
        $request = new AlipayTradeAppPayRequest();
        $info = json_encode([
            'out_trade_no' => $data['trade_no'],
            'subject' => $data['subject'],
            'total_amount' => $data['amount'],
            'product_code' => 'QUICK_MSECURITY_PAY',
        ], JSON_UNESCAPED_UNICODE);
        $request->setBizContent($info);
        $request->setNotifyUrl($this->notifyUrl);
        $result = $aop->sdkExecute($request);
        return $result;
    }

    // 扫码支付
    public function AlipayTradePrecreateRequest($data)
    {
        $aop = $this->getAopClient();
        $request = new AlipayTradePrecreateRequest();
        $info = json_encode([
            'out_trade_no' => $data['trade_no'],
            'subject' => $data['subject'],
            'total_amount' => $data['amount'],
        ], JSON_UNESCAPED_UNICODE);
        $request->setBizContent($info);
        $request->setNotifyUrl($this->notifyUrl);
        $result = $aop->Execute($request);

        $responseNode = str_replace(".", "_", $request->getApiMethodName()) . "_response";
        $resultCode = $result->$responseNode->code;
        if(!empty($resultCode)&&$resultCode == 10000){
            return json_decode(json_encode($result->$responseNode),true);
        } else {
            $this->error($result->$responseNode->sub_msg);
        }
    }

    // pc网站支付
    public function AlipayTradePagePayRequest ($data)
    {
        $aop = $this->getAopClient();
        $request = new AlipayTradePagePayRequest();
        $info = json_encode([
            'out_trade_no' => $data['trade_no'],
            'subject' => $data['subject'],
            'total_amount' => $data['amount'],
            'product_code' => 'FAST_INSTANT_TRADE_PAY',
        ], JSON_UNESCAPED_UNICODE);
        $request->setNotifyUrl($this->notifyUrl);
        $request->setReturnUrl($this->returnUrl);
        $request->setBizContent($info);
        $result = $aop->pageExecute($request,'get');
        return $result;
        // header("location:".$result);
        // exit;
    }
    // https://www.cnblogs.com/love314159/p/13677267.html
    // 手机网站支付
    public function AlipayTradeWapPayRequest ($data)
    {
        $aop = $this->getAopClient();
        $request = new AlipayTradeWapPayRequest();
        $info = json_encode([
            'out_trade_no' => $data['trade_no'],
            'subject' => $data['subject'],
            'total_amount' => $data['amount'],
            'product_code' => 'QUICK_WAP_PAY',
            'quit_url' => $this->returnUrl,
        ], JSON_UNESCAPED_UNICODE);
        $request->setNotifyUrl($this->notifyUrl);
        $request->setReturnUrl($this->returnUrl);
        $request->setBizContent($info);
        $result = $aop->pageExecute($request,'post');
        var_dump($result);
    }

    // 查询
    public function AlipayTradeQueryRequest($data)
    {
        $aop = $this->getAopClient();
        $request = new AlipayTradeQueryRequest();
        $info = json_encode([
            'out_trade_no' => $data['out_trade_no'],
        ]);
        $request->setBizContent($info);
        $result = $aop->execute ( $request);
        $responseNode = str_replace(".", "_", $request->getApiMethodName()) . "_response";
        $resultCode = $result->$responseNode->code;
        if(!empty($resultCode)&&$resultCode == 10000){
            return json_decode(json_encode($result->$responseNode),true);
        } else {
            $this->error($result->$responseNode->sub_msg);
        }
    }

    // 退款
    public function AlipayTradeRefundRequest($data)
    {
        $aop = $this->getAopClient();
        $request = new AlipayTradeRefundRequest();
        $info = json_encode([
            'out_trade_no' => $data['out_trade_no'],
            'refund_amount' => $data['refund_amount'],
        ], JSON_UNESCAPED_UNICODE);
        $request->setBizContent($info);
        $result = $aop->execute ( $request);

        $responseNode = str_replace(".", "_", $request->getApiMethodName()) . "_response";
        $resultCode = $result->$responseNode->code;
        if(!empty($resultCode)&&$resultCode == 10000){
            return json_decode(json_encode($result->$responseNode),true);
        } else {
            $this->error($result->$responseNode->sub_msg);
        }
    }

    // 获取支付宝公用类
    private function getAopClient()
    {
        $aop = new AopClient ();
        $aop->gatewayUrl = $this->gatewayUrl;
        $aop->appId = $this->appId;
        $aop->rsaPrivateKey = $this->rsaPrivateKey;
        $aop->alipayrsaPublicKey = $this->alipayrsaPublicKey;
        $aop->apiVersion = '1.0';
        $aop->signType = 'RSA2';
        $aop->postCharset = 'UTF-8';
        $aop->format = 'json';
        return $aop;
    }
}
