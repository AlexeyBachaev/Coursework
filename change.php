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
    <link rel="stylesheet" href="css\change.css" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>

<body class="body">
    <div class="content">
        <?php
        if (isset($_SESSION["admin"])) {
            if ($_SESSION["admin"] == 1) {
                if (isset($_POST['submit_text'])) {
                    $text = $_POST['my_editor'];
                    $title = $_POST['my_title'];
                    echo '<p class="p-text  ">Вы изменили статью!</p>';

                    $query = "UPDATE `articles` SET `text`= '$text',`title`= '$title' WHERE id=$id ";
                    $result2 = mysqli_query($connect, $query) or die(mysqli_error($connect));
                }
        ?>
                <form action="" method="post">
                    <?php
                    $query = "SELECT `text`,`title` FROM `articles` WHERE id=$id ";
                    $result1 = mysqli_query($connect, $query) or die(mysqli_error($connect));
                    $row = mysqli_fetch_row($result1);

                    echo "<div class='new'>";
                    echo " <h2>Введите заголовок: </h2>
            <input type='text' maxlength='30' size='35' name='my_title' id='my_title' value='" . htmlspecialchars($row[1]) . "'>
            <h2>Введите текст статьи:</h2>";
                    echo "</div>";

                    echo "<div class='new'>";
                    echo "<textarea name='my_editor' id='my_editor' cols='30' rows='10'> " . htmlspecialchars($row[0]) . "</textarea>";
                    echo "</div>";
                    ?>
                    <input type="submit" value="Submit" name="submit_text">
                </form>
    </div>
    <script src="ckeditor\ckeditor.js"></script>
    <script type="text/javascript">
        CKEDITOR.replace('my_editor');
    </script>
<?php
            } else {
?>
    <div id="authorized">
        <h2>Вы не можете пользоваться этой страницей</h2>
    </div>
<?php
            }
        } else {
?>
<div id="authorized">
    <h2>Вы не можете пользоваться этой страницей</h2>
</div>
<?php
        }
?>
</body>

</html>