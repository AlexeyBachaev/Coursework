<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Описание тегов HTML5. Примеры использования. MIME-типы.</title>
    <link rel="stylesheet" href="css\registration.css" type="text/css" />
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
        //Если в сессии существуют сообщения об ошибках, то выводим их
        if (isset($_SESSION["error_messages"]) && !empty($_SESSION["error_messages"])) {
            echo $_SESSION["error_messages"];

            //Уничтожаем чтобы не выводились заново при обновлении страницы
            unset($_SESSION["error_messages"]);
        }

        //Если в сессии существуют радостные сообщения, то выводим их
        if (isset($_SESSION["success_messages"]) && !empty($_SESSION["success_messages"])) {
            echo $_SESSION["success_messages"];

            //Уничтожаем чтобы не выводились заново при обновлении страницы
            unset($_SESSION["success_messages"]);
        }
        ?>
    </div>
    <?php
    //Проверяем, если пользователь не авторизован, то выводим форму регистрации, 
    //иначе выводим сообщение о том, что он уже зарегистрирован
    if (!isset($_SESSION["email"]) && !isset($_SESSION["password"])) {
    ?>
        <div id="form_reg">
            <form action="register.php" method="post" name="form_register">
                <div class="content">
                    <h1>Регистрация</h1>
                    <p>Пожалуйста, заполните поля чтобы создать аккаунт.</p>
                    <hr>

                    <label for="email"><b>Email</b></label>
                    <input type="text" placeholder="Введите Email" name="email" required>

                    <label for="name"><b>Имя пользователя</b></label>
                    <input type="text" placeholder="Имя пользователя" name="nickname" required>

                    <label for="psw"><b>Пароль</b></label>
                    <input type="password" placeholder="Введите пароль" name="password" required>

                    <hr>
                    <button type="submit" class="registerbtn" name="btn_submit_register">Зарегистрироваться</button>
                </div>

                <div class="content signin">
                    <p>Уже есть аккаунт? <a href="form_auth.php">Войти</a>.</p>
                </div>
            </form>
        </div>
    <?php
    } else {
    ?>
        <div id="authorized">
            <h2>Вы уже зарегистрированы</h2>
        </div>
    <?php
    }
    ?>
</body>

</html>