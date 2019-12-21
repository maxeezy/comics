<?php
require "route.php";
$inputData = json_decode(file_get_contents("php://input"), true);
$err = [];

if (empty($inputData['publisher_id'])) {
    array_push($err, "Не введены данные в id издателя");

}
if (empty($inputData['good_name'])) {
    array_push($err, "Не введены данные в поле название товара");

}
if (empty($inputData['category_id'])) {
    array_push($err, "Не введены данные в поле id категории");

}
if (empty($inputData['img'])) {
    array_push($err, "Не введены данные в поле изображение");

}
if (empty($inputData['discription'])) {
    array_push($err, "Не введены данные в поле описание");

}
if (empty($inputData['price'])) {
    array_push($err, "Не введены данные в поле цена");

}
if (empty($inputData['isbn'])) {
    array_push($err, "Не введены данные в поле isbn");
}
if(is_int($inputData['publisher_id'])){
    array_push($err, "Айди издателя должен быть числом");
}
if(is_int($inputData['category_id'])){
    array_push($err, "Айди категории должен быть числом");
}
if(is_int($inputData['price'])){
    array_push($err, "Цена должна быть числом");
}

if (empty($err)){
    $good= [];
    $query = "INSERT INTO `goods`(`id`, `id_publisher`, `name`, `id_category`, `img`, `discription`, `price`) VALUES (NULL,'{$inputData['publisher_id']}','{$inputData['good_name']}','{$inputData['category_id']}','{$inputData['img']}','{$inputData['discription']}','{$inputData['price']}')";
    zapros($query);
    $sql = "INSERT INTO `isbn`(`id_goods`, `isbn`) VALUES ((SELECT `id` FROM `goods` WHERE `name`='{$inputData['good_name']}'),'{$inputData['isbn']}')";
    zapros($sql);
    array_push($good, "Товар добавлен");
    print json_encode($good);
}
else{
    print json_encode($err);
}

