<?php
session_start();

if (isset($_SESSION['LogIn']) && ($_SESSION['LogIn'] == true)) {
    header('Location: CinemaReservation.php');
    exit();
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
        <form id="FormLogIn" action="LogIn.php" method="post" class="gradient-border">
            <label for="inp" class="inp">
                <input type="text" id="login" name="login" placeholder="&nbsp;">
                <span class="label">LOGIN</span>
                <span class="focus-bg"></span>
            </label>
            <label for="inp" class="inp">
                <input type="password" id="password" name="password" placeholder="&nbsp;">
                <span class="label">PASSWORD</span>
                <span class="focus-bg"></span>
            </label>
            <?php
            if ((isset($_SESSION['error']))) {
                echo '<div style="color:red">we cant log into this account</div>';
                unset($_SESSION['error']);
            }
            if ((isset($_SESSION['correctInsert']) && ($_SESSION['correctInsert'] == true))) {
                echo "registration was successful, log in";
                unset($_SESSION['correctInsert']);
            }
            ?>
            <div><input type="submit" value="Log In" class="input-form" id="submit"></div>
            <div><a id="SignUp" href="SignUp.php">SIGN UP</a></div>
        </form>
    </div>
</body>

</html>