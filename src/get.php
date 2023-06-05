<?php
require_once "Env.php";

header("Access-Control-Allow-Origin: *");
$db = new mysqli(
    Env::getDbHost(),
    Env::getDbLogin(),
    Env::getDbPassword(),
    Env::getDbName()
);
$res = $db->query("SELECT id, text, positionX, positionY, color FROM comments")->fetch_all(1);
echo json_encode($res);
