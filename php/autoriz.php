<?php
session_start();
require "route.php";
$inputData = json_decode(file_get_contents("php://input"), true);
$err = [];


    if (empty($inputData['login'])) {
        $err[] = "<div style='color: red'>Не введены данные в поле логин</div>";
    }
    if (empty($inputData['password'])) {
        $err[] = "<div style='color: red'>Не введены данные в поле пароль</div>";
    }
    if (proverka("SELECT * FROM `user` WHERE `login`=" . "\"" . $inputData['login'] . "\"") > 0) {
        $res = createMySql()->query("SELECT * FROM `user` WHERE `login`=" . "\"" . $inputData['login'] . "\"");
        $us = $res->fetch_assoc();
        //$zP= "SELECT 'token' FROM `users` WHERE `login` =" . "\"" . $_POST['login'] . "\"";
        if(password_verify($inputData['password'],$us['password'])){
            $_SESSION['logged_user']=$us;
            $err[]="Все кул";
        }
        else {
            $err[] = "<div style='color: red'>Неверный пороль</div>";
        }
    }
    else{
        $err[] = "<div style='color: red'>Пользователя с таким логином не существует</div>";
    }

print(json_encode($us));
?>
