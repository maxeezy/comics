<?php
require 'route.php';
$res= zapros('SELECT goods.name AS \'goods_name\',categoryes.name AS \'category\',goods.img,isbn.isbn,publishers.name AS \'publishers\',goods.price FROM goods INNER JOIN isbn INNER JOIN publishers INNER JOIN categoryes ON goods.id = isbn.id_goods AND goods.id_publisher = publishers.id AND goods.id_category = categoryes.id_category');
$res2=$res->fetch_assoc();
echo json_encode($res2);
