<?php
$inputData = json_decode(file_get_contents("php://input"), true);


require_once 'route.php';



$err = [];

if (empty($inputData['login'])) {
    array_push($err, "Не введены данные в поле логин");
}

if (empty($inputData['email'])) {
    array_push($err, "Не введены данные в поле мэйл");

}
if (preg_match('/@/',$inputData['email'])!=1){
    array_push($err, "Не забудьте знак @");
}
if (empty($inputData['password'])) {
    array_push($err, "Не введены данные в поле пороль");

}
if(strlen($inputData['login'])<6||strlen($inputData['email'])<6||strlen($inputData['password'])<6||(strlen($inputData['login'])>64||strlen($inputData['email'])>64||strlen($inputData['password'])>64)){
    array_push($err, "Данные в полях меньше 6 или больше 64");
}

if (proverka("SELECT * FROM `user` WHERE `login`=" . "\"" . $inputData['login'] . "\"") > 0) {
    array_push($err, "Пользователь с таким логином уже существует");

}

if (proverka("SELECT * FROM `user` WHERE `mail`=" . "\"" . $inputData['email'] . "\"") > 0) {
    array_push($err, "Пользователь с таким мэйлом уже существует");

}

if (empty($err)) {
    $login = $inputData['login'];
    $mail = $inputData['email'];
    $password = $inputData['password'];
    registr($login, $mail, $password);
    array_push($err, "Вы зарегестрированы. Можете залогинится");
    // $err[] = "<button class='button'><a href=\"../index.html\">Перейти на главную</a></button>" . "<br>";
}

print(json_encode($err));
