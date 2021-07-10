<?php
//Запускаем сессию
session_start();

//Добавляем файл подключения к БД
require_once("dbconnect.php");

//Объявляем ячейку для добавления ошибок, которые могут возникнуть при обработке формы.
$_SESSION["error_messages"] = '';

//Объявляем ячейку для добавления успешных сообщений
$_SESSION["success_messages"] = '';

/*
        Проверяем была ли отправлена форма, то есть была ли нажата кнопка зарегистрироваться. 
        Если да, то идём дальше, если нет, то выведем пользователю сообщение об ошибке, о том что он зашёл на эту страницу напрямую.
    */
if (isset($_POST["btn_submit_register"])) {

    if (isset($_POST["email"])) {

        //Обрезаем пробелы с начала и с конца строки
        $email = trim($_POST["email"]);

        if (!empty($email)) {

            $email = htmlspecialchars($email, ENT_QUOTES);

            //Проверяем формат полученного почтового адреса с помощью регулярного выражения
            $reg_email = "/^[a-z0-9][a-z0-9\._-]*[a-z0-9]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+/i";

            //Если формат полученного почтового адреса не соответствует регулярному выражению
            if (!preg_match($reg_email, $email)) {
                // Сохраняем в сессию сообщение об ошибке. 
                $_SESSION["error_messages"] .= "<p class='mesage_error' >Вы ввели неправельный email</p>";

                //Возвращаем пользователя на страницу регистрации
                header("HTTP/1.1 301 Moved Permanently");
                header("Location: form_register.php");

                //Останавливаем  скрипт
                exit();
            }

            $query = "SELECT `email` FROM `users` WHERE `email`='$email'";
            $result = mysqli_query($connect, $query) or die(mysqli_error($connect));

            //Если кол-во полученных строк ровно единице, значит пользователь с таким почтовым адресом уже зарегистрирован
            if ($result->num_rows == 1) {

                //Если полученный результат не равен false
                if (($row = $result->fetch_assoc()) != false) {

                    // Сохраняем в сессию сообщение об ошибке. 
                    $_SESSION["error_messages"] .= "<p class='mesage_error' >Пользователь с таким почтовым адресом уже зарегистрирован</p>";

                    //Возвращаем пользователя на страницу регистрации
                    header("HTTP/1.1 301 Moved Permanently");
                    header("Location:form_register.php");
                } else {
                    // Сохраняем в сессию сообщение об ошибке. 
                    $_SESSION["error_messages"] .= "<p class='mesage_error' >Ошибка в запросе к БД</p>";

                    //Возвращаем пользователя на страницу регистрации
                    header("HTTP/1.1 301 Moved Permanently");
                    header("Location: form_register.php");
                }
                //Останавливаем  скрипт
                exit();
            }
        } else {
            // Сохраняем в сессию сообщение об ошибке. 
            $_SESSION["error_messages"] .= "<p class='mesage_error'>Укажите Ваш email</p>";

            //Возвращаем пользователя на страницу регистрации
            header("HTTP/1.1 301 Moved Permanently");
            header("Location: form_register.php");

            //Останавливаем  скрипт
            exit();
        }
    } else {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error'>Отсутствует поле для ввода Email</p>";

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location:form_register.php");

        //Останавливаем  скрипт
        exit();
    }

    if (isset($_POST["nickname"])) {

        //Обрезаем пробелы с начала и с конца строки
        $nickname = trim($_POST["nickname"]);

        if (!empty($nickname)) {

            $nickname = htmlspecialchars($nickname, ENT_QUOTES);

            // (3) Место кода для проверки формата почтового адреса и его уникальности

        } else {
            // Сохраняем в сессию сообщение об ошибке. 
            $_SESSION["error_messages"] .= "<p class='mesage_error'>Укажите ваше имя</p>";

            //Возвращаем пользователя на страницу регистрации
            header("HTTP/1.1 301 Moved Permanently");
            header("Location: form_register.php");

            //Останавливаем  скрипт
            exit();
        }
    } else {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error'>Отсутствует поле для ввода имени</p>";

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location:form_register.php");

        //Останавливаем  скрипт
        exit();
    }

    if (isset($_POST["password"])) {

        //Обрезаем пробелы с начала и с конца строки
        $password = trim($_POST["password"]);

        if (!empty($password)) {
            $password = htmlspecialchars($password, ENT_QUOTES);
        } else {
            // Сохраняем в сессию сообщение об ошибке. 
            $_SESSION["error_messages"] .= "<p class='mesage_error'>Укажите Ваш пароль</p>";

            //Возвращаем пользователя на страницу регистрации
            header("HTTP/1.1 301 Moved Permanently");
            header("Location:form_register.php");

            //Останавливаем  скрипт
            exit();
        }
    } else {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error'>Отсутствует поле для ввода пароля</p>";

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location:form_register.php");

        //Останавливаем  скрипт
        exit();
    }

    $query = "INSERT INTO `users` (`email`,`nickname`,`password`) VALUES ('$email','$nickname','$password')";
    $result = mysqli_query($connect, $query) or die(mysqli_error($connect));

    if (!$result) {
        // Сохраняем в сессию сообщение об ошибке. 
        $_SESSION["error_messages"] .= "<p class='mesage_error' >Ошибка запроса на добавления пользователя в БД</p>";

        //Возвращаем пользователя на страницу регистрации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: form_register.php");

        //Останавливаем  скрипт
        exit();
    } else {

        $_SESSION["success_messages"] = "<p class='success_message'>Регистрация прошла успешно!!! <br />Теперь Вы можете авторизоваться используя Ваш логин и пароль.</p>";

        //Отправляем пользователя на страницу авторизации
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: form_auth.php");
    }
}
