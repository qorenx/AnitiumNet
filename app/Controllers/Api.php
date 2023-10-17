<?php

namespace App\Controllers;


class Api extends BaseController
{
    public $ApiFolder;

    public function __construct()
    {
        $this->ApiFolder = 'Api/';
    }

    //Api İndex Page
    public function index()
    {
        return view($this->ApiFolder . '/index');
    }
}
