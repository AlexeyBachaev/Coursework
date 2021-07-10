<?php
//Запускаем сессию
session_start();

//Добавляем файл подключения к БД
require_once("dbconnect.php");

//Объявляем ячейку для добавления ошибок, которые могут возникнуть при обработке формы.
$_SESSION["error_messages"] = '';

//Объявляем ячейку для добавления успешных сообщений
$_SESSION["success_messages"] = '';

if (isset($_POST["btn_submit_auth"])) {

    //Обрезаем пробелы с начала и с конца строки
    $email = trim($_POST["email"]);
    if (isset($_POST["email"])) {

        if (!empty($email)) {
            $email = htmlspecialchars($email, ENT_QUOTES);

            //Проверяем формат полученного почтового адреса с помощью регулярного выражения
            $reg_email = "/^[a-z0-9][a-z0-9\._-]*[a-z0-9]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+/i";

            //Если формат полученного почтового адреса не соответствует регулярному выражению
            if (!preg_match($reg_email, $email)) {
                // Сохраняем в сессию сообщение об ошибке. 
                $_SESSION["error_messages"] .= "<p class='mesage_error' >Вы ввели неправильный email</p>";

                //Возвращаем пользователя на страницу авторизации
                header("HTTP/1.1 301 Moved Permanently");
                header("Location:form_auth.php");

                //Останавливаем скрипт
                exit();
            }
        } else {
            // Сохраняем в сессию сообщение об ошибке. 
            $_SESSION["error_messages"] .= "<p class='mesage_error' >Поле для ввода почтового адреса(email) не должна быть пустой.</p>";

            //Возвращаем пользователя на страницу регистрации
            header("HTTP/1.1 301 Moved Permanently");
            header("Location: form_register.php");

            //Останавливаем скрипт
            exit();
        }
    } else {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error' >Отсутствует поле для ввода Email</p>";

        //Возвращаем пользователя на страницу авторизации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: form_auth.php");

        //Останавливаем скрипт
        exit();
    }

    if (isset($_POST["password"])) {

        //Обрезаем пробелы с начала и с конца строки
        $password = trim($_POST["password"]);

        if (!empty($password)) {
            $password = htmlspecialchars($password, ENT_QUOTES);
        } else {
            // Сохраняем в сессию сообщение об ошибке. 
            $_SESSION["error_messages"] .= "<p class='mesage_error' >Укажите Ваш пароль</p>";

            //Возвращаем пользователя на страницу регистрации
            header("HTTP/1.1 301 Moved Permanently");
            header("Location: form_auth.php");

            //Останавливаем скрипт
            exit();
        }
    } else {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error' >Отсутствует поле для ввода пароля</p>";

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: form_auth.php");

        //Останавливаем скрипт
        exit();
    }

    //Запрос в БД на выборке пользователя.
    $query = "SELECT * FROM `users` WHERE `email` =  '$email' AND `password` = '$password'";
    $result = mysqli_query($connect, $query) or die(mysqli_error($connect));

    if (!$result) {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error' >Ошибка запроса на выборке пользователя из БД</p>";

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: form_auth.php");

        //Останавливаем скрипт
        exit();
    } else {

        //Проверяем, если в базе нет пользователя с такими данными, то выводим сообщение об ошибке
        if ($result->num_rows == 1) {
            while ($row = mysqli_fetch_row($result)) {
                $admin = $row[4];
                $nickname = $row[2];
            }
            // Если введенные данные совпадают с данными из базы, то сохраняем логин и пароль в массив сессий.
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
            $_SESSION['admin'] = $admin;
            $_SESSION['nickname'] = $nickname;

            //Возвращаем пользователя на главную страницу
            header("HTTP/1.1 301 Moved Permanently");
            header("Location:index.php");
        } else {

            // Сохраняем в сессию сообщение об ошибке. 
            $_SESSION["error_messages"] .= "<p class='mesage_error' >Неправильный логин и/или пароль</p>";

            //Возвращаем пользователя на страницу авторизации
            header("HTTP/1.1 301 Moved Permanently");
            header("Location:form_auth.php");

            //Останавливаем скрипт
            exit();
        }
    }
}
