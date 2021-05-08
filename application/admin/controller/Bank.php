<?php


namespace app\admin\controller;


use app\common\model\UserBank;

class Bank extends Base
{
    // ------------------------------------ 用户财务记录开始 ------------------------------------
    /**
     * 财务记录展示页
     */
    public function bankList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取财务记录列表
     */
    public function ajaxGetBankList()
    {
        $list = $this->ajaxGetList('user_bank','user_bank.*,u.name',['create_time'=>'desc'],[],['user u','u.id = user_bank.uid']);
        return $this->ajaxReturn($list);
    }

    /**
     * 删除财务记录执行
     */
    public function delBankAct()
    {
        $id = I("id/d",0);
        $model = new UserBank();
        $this->delAct($id,$model);
    }
    // ------------------------------------ 用户财务记录结束 ------------------------------------


    // ------------------------------------ 充值开始 ------------------------------------
    public function rechargeList()
    {
        $this->getModule();
        return view();
    }

    public function rechargeAct()
    {
        $data = I();
        if(!isset($data['type'])){
            $this->error('请选择充值钱包');
        }
        $userInfo = model("user")->where(['name|phone'=>$data['name']])->field(['id'])->find();
        if(empty($userInfo)){
            $this->error("用户不存在");
        }
        if (false === regvali($data['money'],"money")){
            $this->error("充值金额错误");
        }
        $rs = true;
        if(isset($data['type']['a'])){
            $rs = $this->setMoney('a',$data['money'],$data['msg'],$userInfo['id'],1);
        }
        if(isset($data['type']['b'])){
            $rs = $this->setMoney('b',$data['money'],$data['msg'],$userInfo['id'],1);
        }
        if($rs){
            $this->success("充值成功");
        }else{
            $this->error('充值失败');
        }
    }
    // ------------------------------------ 充值结束 ------------------------------------

}
