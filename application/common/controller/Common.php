<?php

namespace app\common\controller;

use app\common\model\Resource;
use think\Controller;
use think\Db;
use think\Request;

class Common extends Controller
{
    public function _empty($name)
    {
        $this->nopage();
    }

    //404页面跳转
    protected function nopage($url = "")
    {
        $this->view->engine->layout(false);
        $this->redirect('/');
    }

    //获取当前访问的控制器+方法
    protected function getActionUrl()
    {
        $url['controller'] = $this->request->controller();
        $url['action'] = $this->request->action();
        return $url;
    }

    //ajax 获取表格数据
    protected function ajaxGetList($modelName, $getField, $order = [], $where = [], $join = [])
    {
        $model = model($modelName);
        $limit = I("limit/d", config("my.page_num"));
        //拼接搜索条件
        $searchWhere = I("search", []);
        $likeWhere = [];
        foreach ($searchWhere as $k => $v) {
            $v = str_replace("%", "", $v);
            if ($v != "") {
                if (true === is_numeric($v)) {
                    $v = (int)$v;
                }
                if (is_int($v) & $v < 100) {
                    $likeWhere[] = [$k, "eq", $v];
                } else {
                    if (substr_count(strtolower($k), "type")) {
                        $likeWhere[] = [$k, "eq", $v];
                    } else {
                        $likeWhere[] = [$k, "like", "%$v%"];
                    }
                }
            }
        }
        //拼接排序条件
        $dispOrder = I("order", []);
        $orderWhere = [];
        if (!empty($dispOrder)) {
            if (in_array($dispOrder['order'], ['asc', "desc"])) {
                $orderWhere = [$dispOrder['field'] => $dispOrder['order']];
            }
        }
        if (empty($orderWhere)) {
            $orderWhere = $order;
        }
        //判断是否有join
        if (count($join) < 2) {
            $list = $model->where($likeWhere)->order($orderWhere)->where($where)->field($getField)->paginate($limit);
        } else if (count($join) < 4) {
            $list = $model->where($likeWhere)->order($orderWhere)->where($where)->join($join[0], $join[1])->field($getField)->paginate($limit);
        } else if (count($join) < 6) {
            $list = $model->where($likeWhere)->order($orderWhere)->where($where)->join($join[0], $join[1])->join($join[2], $join[3])->field($getField)->paginate($limit);
        } else {
            $list = $model->where($likeWhere)->order($orderWhere)->where($where)->join($join[0], $join[1])->join($join[2], $join[3])->join($join[4], $join[5])->field($getField)->paginate($limit);
        }
        return $list->toArray();
    }

    //ajax 返回数据
    protected function ajaxReturn($data, $count = 0, $code = 200, $msg = "")
    {
        $returnArr = [
            "status" => $code,
            "message" => $msg,
            "total" => $data['total'],
            "rows" => ["item" => $data['data']],
        ];
        return json($returnArr);
    }

    /**
     * @param string moneyType :钱包类型 A
     * @param float money: 操作金额
     * @param string msg：操作留言
     * @param int uid:用户uid
     * @param int type:交易类型
     * @param int gid 关联id
     * @param string area 钱包区域
     * @return bool
     */
    protected function setMoney($moneyType, $money, $msg, $uid, $type, $gid=0, $area='own')
    {
        if (!in_array($moneyType, array_keys(config('type.user_money_type')))) {
            return false;
        }
        if ($money == 0 || $money == null || abs($money) < 0.01) {
            return true;
        }
        $model = model("money_" . $moneyType);
        $nowmoney = $model->where(['m' . $moneyType . "_uid" => $uid])->fetchSql(0)->find();
        if ($nowmoney) {
            $nowmoney = $nowmoney['m' . $moneyType . "_" . $area];
        } else {
            $savedata = [
                'm' . $moneyType . '_uid' => $uid,
                'm' . $moneyType . "_create_time" => time(),
                'm' . $moneyType . '_update_time' => time(),
            ];
            $model->isUpdate(false)->data($savedata)->save();
            $nowmoney = 0;
        }
        if (!preg_match('/^(\-)?[0-9]+.?[0-9]*$/', $money)) {
            return false;
        }
        if ($money < 0) {
            //扣款
            if (abs($money) > $nowmoney) {
                return false;
            }
            $nowmoney -= abs($money);
            $moneyTxt = $money;
            $state = 2;
        } else {
            $nowmoney += $money;
            $moneyTxt = '+'.$money;
            $state = 1;
        }
        $saveData = [
            "uid" => $uid,
            "gid" => $gid,
            "money" => $moneyTxt,
            "total" => round($nowmoney,2),
            "msg" => $msg,
            "type" => $type,
            "state" => $state,
            "money_type" => $moneyType,
            "create_time" => time(),
            "update_time" => time(),
        ];
        $rs = Db::transaction(function () use ($model, $moneyType, $uid, $area, $money, $saveData) {
            $rs1 = $model->where(['m' . $moneyType . "_uid" => $uid])->setInc("m" . $moneyType . "_" . $area, $money);
            $rs2 = model("user_bank")->lock(true)->insert($saveData);
            if(!$rs1 || !$rs2){
                Db::rollback();
                return false;
            }else{
                return true;
            }
        });
        if ($rs) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * @param string moneyType 钱包类型
     * @param int uid 用户id
     * @param string area 钱包区域
     * @return string|null
     */
    protected function getMoney($moneyType, $uid, $area = "all")
    {
        if (!in_array($moneyType, array_keys(config('type.user_money_type')))) {
            return null;
        }
        $model = model("money_" . $moneyType);
        $nowmoney = $model->where(['m' . $moneyType . "_uid" => $uid])->fetchSql(0)->find();
        if ($nowmoney) {
            if ($area == "all") {
                $nowmoney = $nowmoney['m' . $moneyType . "_frozen"] + $nowmoney['m' . $moneyType . "_own"];
            } else {
                $nowmoney = $nowmoney['m' . $moneyType . "_" . $area];
            }
        } else {
            $savedata = [
                'm' . $moneyType . '_uid' => $uid,
                'm' . $moneyType . "_create_time" => time(),
                'm' . $moneyType . '_update_time' => time(),
            ];
            $model->isUpdate(false)->data($savedata)->save();
            $nowmoney = 0;
        }
        return number_format($nowmoney,2,'.','');
    }

    //封装上传方法,自动覆盖删除原图
    protected function uploadsImg($fileName)
    {
        $file = request()->file($fileName);
        if(empty($file)){
            return '文件不存在';
        }
        $info = $file->validate(['size'=>config('my.upload_img_size')*1024*1024,'ext'=>'jpg,jpeg,png,gif'])->rule("date")->move( './uploads');
        if($info){
            $type = explode('.',$info->getInfo()['name']);
            $data = [
                'name' => $info->getInfo()['name'],
                'url' => "/uploads/".str_replace("\\","/",$info->getSavename()),
                'type' => end($type),
                'size' => $info->getInfo()['size'],
                'size_text' => $this->getSize($info->getInfo()['size'])
            ];
            Resource::create($data);
            return $info->getSaveName();
        }else{
            return $file->getError();
        }
    }

    protected function uploadsFile($fileName)
    {
        $file = request()->file($fileName);
        if(empty($file)){
            return '文件不存在';
        }
        $info = $file->validate(['size'=>config('my.upload_file_size')*1024*1024])->rule("date")->move( './uploads');
        if($info){
            $type = explode('.',$info->getInfo()['name']);
            $data = [
                'name' => $info->getInfo()['name'],
                'url' => "/uploads/".str_replace("\\","/",$info->getSavename()),
                'type' => end($type),
                'size' => $info->getInfo()['size'],
                'size_text' => $this->getSize($info->getInfo()['size'])
            ];
            Resource::create($data);
            return [
                'filename' => $info->getSavename(),
                'size' => $this->getSize($info->getInfo()['size'])
            ];
        }else{
            $this->error($file->getError());
        }
    }

    function getSize($filesize) {
        if($filesize >= 1073741824) {
            $filesize = round($filesize / 1073741824 * 100) / 100 . ' GB';
        } elseif($filesize >= 1048576) {
            $filesize = round($filesize / 1048576 * 100) / 100 . ' MB';
        } elseif($filesize >= 1024) {
            $filesize = round($filesize / 1024 * 100) / 100 . ' KB';
        } else {
            $filesize = $filesize . ' 字节';
        }
        return $filesize;
    }
}
