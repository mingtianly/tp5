<?php


namespace app\admin\controller;


use app\common\model\AdminModule;

class demo extends Base
{
    /**
     * 模块展示页
     */
    public function moduleList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取模块列表
     */
    public function ajaxGetModuleList()
    {
        $list = $this->ajaxGetList('admin_module','*',['model_disp'=>'asc']);
        return $this->ajaxReturn($list);
    }

    /**
     * 添加模块
     */
    public function addModule()
    {
        $this->cancelLayout();
        $id = I('id/d',0);
        if($id){
            $info = AdminModule::where('id',$id)->find();
            if(empty($info)){
                $this->iframeClose('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        return view();

    }

    /**
     * 添加模块执行
     */
    public function addModuleAct()
    {
        $data = I();
        $validate = new \app\common\validate\AdminModule();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminModule();
        $this->addAct($data,$model);
    }

    /**
     * 修改模块执行
     */
    public function editModuleAct()
    {
        $data = I();
        $validate = new \app\common\validate\AdminModule();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new AdminModule();
        $this->editAct($data,$model);
    }

    /**
     * 监听切换执行
     */
    public function switchModuleAct()
    {
        $data = I();
        $model = new AdminModule();
        if($model->isUpdate(true)->save($data)){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }


    /**
     * 批量修改状态执行
     */
    public function setStateModuleAct()
    {
        $data = I('list');
        $model = new AdminModule();
        $rs = $model->saveAll($data);
        if($rs){
            $this->success(lang('edit success'));
        }else{
            $this->error(lang('edit error'));
        }
    }

    /**
     * 删除模块执行
     */
    public function delModuleAct()
    {
        $id = I("id/d",0);
        $model = new AdminModule();
        $this->delAct($id,$model);
    }

    /**
     * 多选删除模块执行
     */
    public function delModuleAllAct()
    {
        $list = I('list/a');
        $model = new AdminModule();
        $this->delAllAct($list,$model);
    }
}
