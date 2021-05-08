<?php


namespace app\admin\controller;


class User extends Base
{
    // ------------------------------------ 用户管理开始 ------------------------------------
    /**
     * 用户展示页
     */
    public function userList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取用户列表
     */
    public function ajaxGetUserList()
    {
        $list = $this->ajaxGetList('user','*',['id'=>'desc']);
        foreach($list['data'] as $k=>$v){
            if((int)config('my.on_money_a') === 1){
                $list["data"][$k]['moneyA'] = $this->getMoney("a",$v['id'],"own");
            }
            if((int)config('my.on_money_b') === 1){
                $list["data"][$k]['moneyB'] = $this->getMoney("b",$v['id'],"own");
            }
        }
        return $this->ajaxReturn($list);
    }

    /**
     * 添加用户
     */
    public function addUser()
    {
        $this->cancelLayout();
        $id = I('id/d',0);
        if($id){
            $info = \app\common\model\User::where('id',$id)->find();
            if(empty($info)){
                $this->iframeClose('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        return view();
    }

    /**
     * 添加用户执行
     */
    public function addUserAct()
    {
        $data = I();
        $validate = new \app\common\validate\User();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new \app\common\model\User();
        $this->addAct($data,$model);
    }

    /**
     * 修改用户执行
     */
    public function editUserAct()
    {
        $data = I();
        $validate = new \app\common\validate\User();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new \app\common\model\User();
        $this->editAct($data,$model);
    }

    /**
     * 监听切换执行
     */
    public function switchUserAct()
    {
        $data = I();
        $model = new \app\common\model\User();
        if($model->isUpdate(true)->save($data)){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 修改用户字段执行
     */
    public function editUserFieldAct()
    {
        $data = I();
        $rs = \app\common\model\User::where('id',$data['id'])->update([$data['field']=>$data['value']]);
        if($rs){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 批量修改状态执行
     */
    public function setStateUserAct()
    {
        $data = I('list');
        $model = new \app\common\model\User();
        $rs = $model->saveAll($data);
        if($rs){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 删除用户执行
     */
    public function delUserAct()
    {
        $id = I("id/d",0);
        $model = new \app\common\model\User();
        $this->delAct($id,$model);
    }

    /**
     * 多选删除用户执行
     */
    public function delUserAllAct()
    {
        $list = I('list/a');
        $model = new \app\common\model\User();
        $this->delAllAct($list,$model);
    }


    // ------------------------------------ 用户管理结束 ------------------------------------


}
