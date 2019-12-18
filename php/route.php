<?php
function createMysql() :mysqli
{
    $mysqli = new mysqli("localhost", "root", "", "magaz");
    if ($mysqli->connect_errno) {
        throw new Exception("Не удалось подключиться к БД  " . $mysqli->connect_error());
    }
    return $mysqli;
}
function registr(string $login, string $mail, string $password)
{
    $mysql = createMysql();
    $passwordw = password_hash($password, PASSWORD_BCRYPT);
    $query = "INSERT INTO `user` (`id`,  `login`,`mail`, `password`) VALUES (NULL, '$login','$mail', '$passwordw')";
    return $mysql->query($query);
}

function proverka($que)
{
    $mysqli = createMySql();
    if ($result = $mysqli->query($que)) {
        $row = $result->num_rows;
    }
    return $row;
}

function perebor($err)
{
    foreach ($err as $item)
        echo $item;
}
function zapros($que){
    $mysql=createMysql();
    return $mysql->query($que);
}