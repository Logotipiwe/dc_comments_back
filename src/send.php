<?php
require_once 'Env.php';

header("Access-Control-Allow-Origin: *");
$text = $_GET['text'];
$utm = $_GET['utm'];
if(strlen($text) > 35){
    die(json_encode(['ok'=>false, 'err'=>"Слишком длинное сообщение"]));
}
if($text === ""){
    die(json_encode(['ok'=>false, 'err'=>"Сообщение должно быть не пустое"]));
}
$margin = 10;
$posX = rand($margin,100-$margin);
$posY = rand($margin,100-$margin);
$r = rand(50,255);
$g = rand(50,255);
$b = rand(50,255);
$color = "($r, $g, $b)";
$db = new mysqli(
    Env::getDbHost(),
    Env::getDbLogin(),
    Env::getDbPassword(),
    Env::getDbName());
$stmt = $db->prepare("INSERT INTO comments (text, positionX, positionY, color, utm) VALUES (?,?,?,?,?)");
$stmt->bind_param('siiss', $text, $posX, $posY, $color, $utm);
$stmt->execute();
echo json_encode(['ok'=>true]);
