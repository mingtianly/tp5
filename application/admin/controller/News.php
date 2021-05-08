<?php


namespace app\admin\controller;


use app\common\model\NewsNotice;
use app\common\model\NewsStatic;

class News extends Base
{
    // ------------------------------------ 静态页管理开始 ------------------------------------
    /**
     * 静态页展示页
     * @return \think\response\View
     */
    public function staticList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取静态页列表
     * @return \think\response\Json
     */
    public function ajaxGetStaticList()
    {
        $list = $this->ajaxGetList('news_static','*');
        return $this->ajaxReturn($list);
    }

    /**
     * 获取静态页详情
     * @return mixed
     */
    public function getStaticContent()
    {
        $id = I('id/d',0);
        $info = NewsStatic::where('id',$id)->field('*')->find()->getData();
        if(empty($info)){
            $this->error('信息不存在');
        }
        return $info;
    }

    /**
     * 添加静态页
     * @return \think\response\View
     */
    public function addStatic()
    {
        $id = I('id/d',0);
        $this->assign('id',$id);
        $this->getModule();
        if($id){
            $info = NewsStatic::where('id',$id)->find()->getData();
            if(empty($info)){
                $this->error('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        return view();
    }

    /**
     * 添加静态页执行
     */
    public function addStaticAct()
    {
        $data = I();
        $content = input('content');
        $data['content'] = $content;
        $validate = new \app\common\validate\NewsStatic();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new NewsStatic();
        $this->addAct($data,$model);
    }

    /**
     * 修改静态页执行
     */
    public function editStaticAct()
    {
        $data = I();
        $content = input('content');
        $data['content'] = $content;
        $validate = new \app\common\validate\NewsStatic();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new NewsStatic();
        $this->editAct($data,$model);
    }

    /**
     * 删除静态页执行
     */
    public function delStaticAct()
    {
        $id = I("id/d",0);
        $model = new NewsStatic();
        $this->delAct($id,$model);
    }

    /**
     * 多选删除静态页执行
     */
    public function delStaticAllAct()
    {
        $list = I('list/a');
        $model = new NewsStatic();
        $this->delAllAct($list,$model);
    }
    // ------------------------------------ 静态页管理结束 ------------------------------------


    // ------------------------------------ 公告管理开始 ------------------------------------
    /**
     * 公告展示页
     * @return \think\response\View
     */
    public function noticeList()
    {
        $this->getModule();
        return view();
    }

    /**
     * 获取公告列表
     * @return \think\response\Json
     */
    public function ajaxGetNoticeList()
    {
        $list = $this->ajaxGetList('news_notice','*');
        return $this->ajaxReturn($list);
    }

    /**
     * 获取公告详情
     * @return mixed
     */
    public function getNoticeContent()
    {
        $id = I('id/d',0);
        $info = NewsNotice::where('id',$id)->field('*')->find()->getData();
        if(empty($info)){
            $this->error('信息不存在');
        }
        return $info;
    }

    /**
     * 添加公告
     * @return \think\response\View
     */
    public function addNotice()
    {
        $id = I('id/d',0);
        $this->assign('id',$id);
        $this->getModule();
        if($id){
            $info = NewsNotice::where('id',$id)->find()->getData();
            if(empty($info)){
                $this->error('信息不存在');die;
            }
            $this->assign('info',$info);
        }
        return view();
    }

    /**
     * 添加公告执行
     */
    public function addNoticeAct()
    {
        $data = I();
        $content = input('content');
        $data['content'] = $content;
        $validate = new \app\common\validate\NewsNotice();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new NewsNotice();
        $this->addAct($data,$model);
    }

    /**
     * 修改公告执行
     */
    public function editNoticeAct()
    {
        $data = I();
        $content = input('content');
        $data['content'] = $content;
        $validate = new \app\common\validate\NewsNotice();
        if(!$validate->check($data)){
            $this->error($validate->getError());
        }
        $model = new NewsNotice();
        $this->editAct($data,$model);
    }

    /**
     * 删除公告执行
     */
    public function delNoticeAct()
    {
        $id = I("id/d",0);
        $model = new NewsNotice();
        $this->delAct($id,$model);
    }

    /**
     * 多选删除公告执行
     */
    public function delNoticeAllAct()
    {
        $list = I('list/a');
        $model = new NewsNotice();
        $this->delAllAct($list,$model);
    }
    // ------------------------------------ 公告管理结束 ------------------------------------

}
