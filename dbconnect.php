<?php
// Указываем кодировку
header('Content-Type: text/html; charset=utf-8');

$server = "localhost"; // имя хоста
$username = "root"; // Имя пользователя БД
$password = ""; // Пароль пользователя. Если у пользователя нету пароля то, оставляем пустое значение ""
$dbname = 'a08'; // Имя базы данных, которую создали


$connect = mysqli_connect($server, $username, $password);
$db_select = mysqli_select_db($connect, $dbname);
