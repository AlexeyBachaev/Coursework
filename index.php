<?php
//Подключение шапки
require_once("header.php");
//Добавляем файл подключения к БД
require_once("dbconnect.php");
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Описание тегов HTML5. Примеры использования. MIME-типы.</title>
    <link rel="stylesheet" href="css\style.css" type="text/css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>

<body class="body">
    <div class="content">
        <?php

        $query = "SELECT * FROM articles";
        $result = mysqli_query($connect, $query);
        $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $num_rows = mysqli_num_rows($result);

        for ($i = 0; $i < $num_rows; $i++) {
            $id = $row[$i]['id'];
            $title = $row[$i]['title'];
            if (isset($_SESSION['admin'])) {
                $admin = $_SESSION['admin'];
            }
            echo "<section class='section'>
            <div class='article-click' onClick=\"window.location.href='article.php?id=$id'\">
            <img src='img\og_og_1518993005216376846.jpg' alt='HTML5 теги' class='article-img'>
            <article class='article'><div class='title'><p>" . $title . "</p></div></article>
            </div>";
            if (isset($_SESSION['email']) && isset($_SESSION['password']) && ($_SESSION['admin'] == true)) {
                // если нет, то выводим блок с ссылками на страницу регистрации и авторизации
        ?>
            <?php
                echo "<div class='div-aside'>";
                echo "<div class='div-change-delete' onClick=\"window.location.href='change.php?id=$id'\">";
                echo "<p class='text-p'>Изменить</p>";
                echo "</div>";
                echo "<div class='div-change-delete' onClick=\"if(confirm('Уверены, что хотите удалить?')) window.location.href='delete.php?id=$id&admin=$admin'\">";
                echo "<p class='text-p'>Удалить</p>";
                echo "</div>";
                echo "</div>";
            } ?>
            </section>
        <?php
        }
        if (isset($_SESSION['email']) && isset($_SESSION['password']) && ($_SESSION['admin'] == true)) {
            // если нет, то выводим блок с ссылками на страницу регистрации и авторизации
        ?>
            <div class="add">
                <button onclick="document.location='CKeditor.php'">Добавить</button>
            </div>
        <?php
        }
        ?>
    </div>
</body>

</html>


<br>