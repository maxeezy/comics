<?php
require "route.php";
$inputData = json_decode(file_get_contents("php://input"), true);
$err = [];

if (empty($inputData['publisher_id'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($inputData['good_name'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($inputData['category_id'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($inputData['img'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($inputData['discription'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($inputData['price'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($inputData['isbn'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (empty($err)){
    $query = "INSERT INTO `goods`(`id`, `id_publisher`, `name`, `id_category`, `img`, `discription`, `price`) VALUES (NULL,'" . "\"" . $inputData['publisher_id'] . "\"'," . "\"" . $inputData['good_name'] . "\"," . "\"" . $inputData['category_id'] . "\"," . "\"" . $inputData['img'] . "\"," . "\"" . $inputData['discription'] . "\"," . "\"" . $inputData['price'] . "\")";
    zapros($query);
    print json_encode("Успешно добавлено");
}
else{
    print json_encode($err);
}

