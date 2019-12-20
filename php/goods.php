<?php
require 'route.php';
$res= zapros('SELECT goods.name AS \'goods_name\',goods.id AS \'good_id\',categoryes.name AS \'category\',goods.img,goods.price FROM goods  INNER JOIN categoryes ON goods.id_category = categoryes.id_category');
$res2=$res->fetch_all(MYSQLI_ASSOC);
echo json_encode($res2);

