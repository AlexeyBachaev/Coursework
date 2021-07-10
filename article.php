<?php
//Подключение шапки
require_once("header.php");

//Добавляем файл подключения к БД
require_once("dbconnect.php");
$id = $_GET['id'];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css\article.css" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>

<body class="body">
    <?php if (isset($_SESSION["email"]) && isset($_SESSION["password"])) { ?>
        <div class="content">
            <?php
            $query = "SELECT `text`,`title` FROM `articles` WHERE id=$id ";
            $result1 = mysqli_query($connect, $query) or die(mysqli_error($connect));
            $row = mysqli_fetch_row($result1);

            echo "<div class='new'>
            <h1>" . $row[1] . "</h1>
            </div>";

            echo "<div class='new'>";
            echo "<p>" . $row[0] . "</p>";
            echo "</div>";
            ?>
        </div>
    <?php } else {
    ?>

        <div id="authorized">
            <h2>Авторизируйтесь, чтобы просматривать статьи</h2>
        </div>

    <?php
    }
    ?>
</body>

</html>