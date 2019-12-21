<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="js/output_goods.js"></script>
    <link rel="stylesheet" href="style/st.css">
    <link rel="stylesheet" href="style/st2.css">
</head>
<body>
<header class="header">

        <div class="header-logo">
            MARVEL&DC
        </div>
    <div class="wrap">
        <div class="header-nav-wrap">
            <div class="header-nav">
                <a href="http://comics-shop/" class="nav-x">Главная</a>
                <a href="#" class="nav-x">Каталог Товаров</a>
                <a href="#" class="nav-x">Акции</a>
                <a href="#" class="nav-x">Доставка</a>
                <a href="#" class="nav-x">Акции</a>
                <a href="#" class="nav-x">Контакты</a>
            </div>
            <?php if (isset($_SESSION['logged_user'])) {
                echo "<div class='account-field'><a href='http://comics-shop/account.php' class='nicname'>" . $_SESSION['logged_user']['login'] . "</a><a href='http://comics-shop/korzine.php'>/Корзина</a><div  class='logaut'> / Выйти</div></div>";
            } else echo "<div class=\"wrap-auto-reg\">
            <div  class=\"aut-but\">Авторизироваться</div>
            <div class=\"reg-but\">Зарегистрироваться</div>
       </div>" ?>


            <form action="../php/reg2.php" method="post" class="form-reg" style="display: none">
                <div class="wrap-reg">
                    <div class="title-pole">Регистрация</div>
                    <input type="text" name="login" placeholder="Введите логин">
                    <input type="email" name="mail" placeholder="Введите mail ">
                    <input type="password" name="password" placeholder="Введите пароль">
                    <input type="button" value="Зарегистрироваться" onclick="otprav(this.form)" class="subm">
                    <div class="field-1"></div>
                </div>

            </form>

            <form action="../php/autoriz.php" method="post" class="form-autoriz" style="display: none">
                <div class="wrap-aut">
                    <div class="title-pole">Авторизация</div>
                    <input type="text" name="login" placeholder="Введите логин">
                    <input type="password" name="password" placeholder="Введите пароль">
                    <input type="button" value="Залогиниться" class="subm" onclick="otprav2(this.form)">
                    <div class="field-2"></div>
                </div>
            </form>

        </div>
    </div>
</header>
<div class="main-korz">
    <div class="wrap">

    </div>
</div>
<footer class="footer"></footer>
<script src="js/output_goods.js"></script>
<script src="js/js_reg_auto.js" type="text/javascript"></script>
<script src="js/disign.js"></script>
</body>
</html>