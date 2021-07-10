<?php
//Запускаем сессию
session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <title>Описание тегов HTML5.</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css\header.css" type="text/css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
</head>

<body class="body">

    <div class="container">

        <header class="header">
            <a href="index.php"><img src="img\kisspng-html-computer-icons-web-development-single-page-ap-circle-logo-5adf2413c0aa65.1590484015245732037892.png" alt="Лого HTML" class="logo"></a>
            <h2 class="logo-text">Описание тегов HTML5.
                <p>Примеры использования. MIME-типы.</p>
            </h2>
            <div class="log-reg">
                <?php
                //Проверяем авторизован ли пользователь
                if (!isset($_SESSION['email']) && !isset($_SESSION['password'])) {
                    // если нет, то выводим блок с ссылками на страницу регистрации и авторизации
                ?>

                    <a class="header-text" href="form_auth.php">Вход</a>
                    <a class="header-text" href="form_register.php">Регистрация</a>
                <?php
                } else {
                    //Если пользователь авторизован, то выводим ссылку Выход
                ?>
                    <p class="header-text"><?php echo $_SESSION['email'] ?> </p>
                    <?php if ($_SESSION['admin']) { ?>
                        <p class="header-text text-admin"><?php echo 'admin' ?> </p>
                    <?php }; ?>
                    <p class="header-text"><?php echo 'Имя: ' . $_SESSION['nickname'] ?> </p>
                    <a href="logout.php" class="exit">Выход</a>
                <?php
                }
                ?>
            </div>
        </header>
</body>

</html>