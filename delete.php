<?php

//Добавляем файл подключения к БД
require_once("dbconnect.php");

$admin = $_GET['admin'];

if (isset($admin)) {
    if ($admin == true) {
        $id = $_GET['id'];

        $query = "DELETE FROM `articles` WHERE id=$id";
        $result = mysqli_query($connect, $query) or die(mysqli_error($connect));

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: index.php");
        //Останавливаем скрипт
        exit();
    } else {
?>
        <div id="authorized">
            <h2>Вы не можете пользоваться этой страницей вы не админ </h2>
        </div>
    <?php
    }
} else {
    ?>
    <div id="authorized">
        <h2>Вы не можете пользоваться этой страницей вы не авторизированны</h2>
    </div>
<?php
}
?>