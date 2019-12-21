<?php
require_once 'route.php';
session_start();
function connect($query){
    $result = createMysql()->query($query);
    $row = $result->fetch_array(MYSQLI_ASSOC);
    return $row;
}
function out(){
    $a=$_SESSION['logged_user']['id'];
    $query="SELECT `user_id` FROM `user_sale` WHERE `user_id`='$a'";
    $d=connect($query);
    $query1="SELECT `id`, `name`, `price` FROM `goods` WHERE `id`='{$d['user_id']}'";
    $d=connect($query1)['price'];
         
}