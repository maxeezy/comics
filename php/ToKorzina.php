<?php
require 'route.php';
$inputData = json_decode(file_get_contents("php://input"), true);
$sql = "INSERT INTO `user_sale` ( `goods_id`,`user_id`) VALUES ('{$inputData['good_id']}', 27);";
$res = zapros($sql);

