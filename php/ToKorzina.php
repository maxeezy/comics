<?php
session_start();
require 'route.php';
$inputData = json_decode(file_get_contents("php://input"), true);
$sql = "INSERT INTO `user_sale` ( `goods_id`,`user_id`) VALUES ('{$inputData['good_id']}','{$_SESSION['logged_user']['id']}');";
$res = zapros($sql);
print json_encode($res);
