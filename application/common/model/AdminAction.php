<?php
namespace app\common\model;

use think\Db;
use think\Model;
use think\model\concern\SoftDelete;

class AdminAction extends Common
{
    use SoftDelete;
    protected $pk = 'aa_id';
    protected $createTime = 'aa_create_time';
    protected $updateTime = 'aa_update_time';
    protected $deleteTime = 'aa_delete_time';

}
