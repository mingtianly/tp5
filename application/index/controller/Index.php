<?php
namespace app\index\controller;

class Index
{
    public function index()
    {
        echo 'hello word!';
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
