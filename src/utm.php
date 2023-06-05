<?php
require_once 'Env.php';

header("Access-Control-Allow-Origin: *");

$db = new mysqli(
    Env::getDbHost(),
    Env::getDbLogin(),
    Env::getDbPassword(),
    Env::getDbName()
);

$utm = $_GET['utm'];
$ip = $_SERVER['REMOTE_ADDR'];

$stmt = $db->prepare("INSERT INTO utm (utm) values (?)");
$stmt->bind_param('s', $utm);
$stmt->execute();
$insert_id = $db->insert_id;
$res = $db->query("SELECT * FROM utm WHERE id = ${insert_id}")->fetch_all(1);
echo json_encode(['ok' => true, 'a' => $insert_id, 'b' => $res]);
