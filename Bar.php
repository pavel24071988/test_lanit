<?php
/**
 * Created by PhpStorm.
 * User: pavel
 * Date: 13.09.18
 * Time: 2:06
 */

namespace Example;

class Bar extends Foo
{
    protected static $childCounter = 0;

    public function __construct()
    {
        ++static::$parentCounter;
        ++self::$childCounter;

        parent::__construct();
    }
}