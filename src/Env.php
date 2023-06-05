<?php
class Env
{
    public static function getDbHost(){
        return self::tryGetVar("DB_HOST");
    }

    public static function getDbLogin(){
        return self::tryGetVar("DB_LOGIN");
    }

    public static function getDbPassword(){
        return self::tryGetVar("DB_PASS");
    }

    public static function getDbName(){
        return self::tryGetVar("DB_NAME");
    }

    public static function tryGetVar($name)
    {
        $vars = getenv();
        if(!isset($vars[$name])){
            throw new Exception("Env var ${name} is not set!");
        }
        return $vars[$name];
    }
}