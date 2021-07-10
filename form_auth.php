<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Описание тегов HTML5. Примеры использования. MIME-типы.</title>
    <link rel="stylesheet" href="css\login.css" type="text/css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>

<body>
    <?php
    //Подключение шапки
    require_once("header.php");
    ?>
    <!-- Блок для вывода сообщений -->
    <div class="block_for_messages">
        <?php

        if (isset($_SESSION["error_messages"]) && !empty($_SESSION["error_messages"])) {
            echo $_SESSION["error_messages"];

            //Уничтожаем чтобы не появилось заново при обновлении страницы
            unset($_SESSION["error_messages"]);
        }

        if (isset($_SESSION["success_messages"]) && !empty($_SESSION["success_messages"])) {
            echo $_SESSION["success_messages"];

            //Уничтожаем чтобы не появилось заново при обновлении страницы
            unset($_SESSION["success_messages"]);
        }
        ?>
    </div>

    <?php
    //Проверяем, если пользователь не авторизован, то выводим форму авторизации, 
    //иначе выводим сообщение о том, что он уже авторизован
    if (!isset($_SESSION["email"]) && !isset($_SESSION["password"])) {
    ?>
        <div id="form_auth">
            <form action="auth.php" method="post" name="form_auth">
                <div class="content">
                    <h1>Вход в аккаунт</h1>
                    <hr>

                    <label for="email"><b>Email</b></label>
                    <input type="text" placeholder="Введите Email" name="email" required>

                    <label for="psw"><b>Пароль</b></label>
                    <input type="password" placeholder="Введите пароль" name="password" required>
                    <hr>
                    <button type="submit" class="registerbtn" name="btn_submit_auth">Войти</button>
                </div>
            </form>
        </div>
    <?php
    } else {
    ?>

        <div id="authorized">
            <h2>Вы уже авторизованы</h2>
        </div>

    <?php
    }
    ?>
</body>

</html>