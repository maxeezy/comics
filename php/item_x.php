<?php
require 'route.php';
$inputData = json_decode(file_get_contents("php://input"), true);
$res= zapros("SELECT goods.name AS 'goods_name',categoryes.name AS 'category',goods.img,isbn.isbn,publishers.name AS 'publishers',autors.autor_name,goods.discription ,goods.price FROM goods INNER JOIN isbn INNER JOIN autors INNER JOIN publishers INNER JOIN categoryes ON goods.id = isbn.id_goods AND goods.id_publisher = publishers.id AND goods.id_category = categoryes.id_category  AND goods.id =". "\"" . $inputData['good_id'] . "\"");
$res2=$res->fetch_assoc();
print json_encode($res2);
