<?php
session_start();

if (isset($_POST['email'])) {
    $correctSignUp = true;

    $login = $_POST['login'];
    if ((strlen($login) < 3) || (strlen($login) > 20)) {
        $correctSignUp = false;
        $_SESSION['errorLogin'] = 'login must contain from 3 to 20 characters';
    }

    $email = $_POST['email'];
    $emailCorrect = filter_var($email, FILTER_SANITIZE_EMAIL);
    if ((filter_var($emailCorrect, FILTER_VALIDATE_EMAIL) == false) || ($emailCorrect != $email)) {
        $correctSignUp = false;
        $_SESSION['errorEmail'] = 'the email address is incorrect';
    }

    $password = $_POST['password'];
    $passwordHash = password_hash($password, PASSWORD_DEFAULT);
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $phoneNumber = $_POST['phoneNumber'];


    if ($correctSignUp == true) {
        require_once 'Connect.php';
        mysqli_report(MYSQLI_REPORT_STRICT);
        try {
            $connect = new mysqli($host, $db_user, $db_password, $db_name);
            if ($connect->connect_error != 0) {
                throw new Exception(mysqli_connect_errno());
            } else {
                $result = $connect->query("SELECT IDlogin FROM login WHERE login='$login'");
                if (!$result) throw new Exception($connect->error);

                if (($result->num_rows) > 0) {
                    $correctSignUp = false;
                    $_SESSION['errorLogin'] = 'this.login already exists';
                } else {

                    if ($connect->query(("INSERT INTO `login`(`Login`, `Password`) VALUES ('$login','$passwordHash')"))) {
                        //if ($connect->query(("INSERT INTO `dane`(`Name`, `surname`, `PhoneNumber`, `Email`, `IDlogin`) VALUES ('$name','$surname','$phoneNumber','$email', (SELECT `login`.`IDlogin` FROM `login` ORDER BY `IDlogin` DESC LIMIT 1))"))) {
                            //'SELECT * FROM `login`, `dane` WHERE `login`.`IDlogin` = `dane`.`IDlogin`'
                            $_SESSION['correctInsert'] = true;
                            header('Location: index.php');
                        //}
                    } else {
                        throw new Exception($connect->error);
                    }
                }

                $connect->close();
            }
        } catch (Exception $e) {
            echo "Error";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/form.css">
</head>

<body>
    <div id="container">
        <form id="FormSignUp" action="SignUp.php" method="post" class="gradient-border">
            <label for="inp" class="inp">
                <input type="text" id="name" name="name" minlength="3" placeholder="&nbsp;">
                <span class="label">NAME</span>
                <span class="focus-bg"></span>
            </label>
            <label for="inp" class="inp">
                <input type="text" id="surname" name="surname" minlength="3" placeholder="&nbsp;">
                <span class="label">SURNAME</span>
                <span class="focus-bg"></span>
            </label>
            <label for="inp" class="inp">
                <input type="number" id="phoneNumber" name="phoneNumber" minlength="9" placeholder="&nbsp;">
                <span class="label">PHONE NUMBER</span>
                <span class="focus-bg"></span>
            </label>
            <label for="inp" class="inp">
                <input type="text" id="email" name="email" minlength="9" placeholder="&nbsp;">
                <span class="label">EMAIL</span>
                <span class="focus-bg"></span>
            </label>
            <?php
            if (isset($_SESSION['errorEmail'])) {
                echo '<div style=" color:red">' . $_SESSION['errorEmail'] . '</div>';
                unset($_SESSION['errorEmail']);
            }
            ?>
            <label for="inp" class="inp">
                <input type="text" id="login" name="login" minlength="3" placeholder="&nbsp;">
                <span class="label">LOGIN</span>
                <span class="focus-bg"></span>
            </label>
            <?php
            if (isset($_SESSION['errorLogin'])) {
                echo '<div style=" color:red">' . $_SESSION['errorLogin'] . '</div>';
                unset($_SESSION['errorLogin']);
            }
            ?>
            <label for="inp" class="inp">
                <input type="password" id="password" name="password" minlength="8" placeholder="&nbsp;">
                <span class="label">PASSWORD</span>
                <span class="focus-bg"></span>
            </label>
            <div><input type="submit" value="Sign Up" class="input-form" id="submit"></div>
            <div><a id="SignUp" href="index.php">Log In</a></div>
        </form>
    </div>
</body>

</html>