<?php


namespace app\admin\controller;


class Resource extends Base
{
    // ------------------------------------ 资源管理开始 ------------------------------------

    /**
     * 资源展示页
     * @return \think\response\View
     */
    public function resourceList()
    {
        $this->getModule();
        $typeList = \app\common\model\Resource::field('type')->group('type')->select();
        $this->assign('typeList', $typeList);
        return view();
    }

    /**
     * 获取资源列表
     * @return \think\response\Json
     */
    public function ajaxGetResourceList()
    {
        $list = $this->ajaxGetList('resource', '*', ['id' => 'desc']);
        return $this->ajaxReturn($list);
    }

    /**
     * 删除资源执行
     */
    public function delResourceAct()
    {
        $id = I("id/d", 0);
        @unlink('.' . I('url'));
        $model = new \app\common\model\Resource();
        $this->delAct($id, $model);
    }

    /**
     * 多选删除资源执行
     */
    public function delResourceAllAct()
    {
        $list = I('list/a');
        $url = I('url/a');
        foreach ($url as $v) {
            @unlink('.' . $v);
        }
        $model = new \app\common\model\Resource();
        $this->delAllAct($list, $model);
    }
    // ------------------------------------ 资源管理结束 ------------------------------------
}
