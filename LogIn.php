<?php
session_start();
if (!isset($_POST['login']) || !isset($_POST['password'])) {
    header('Location: index.php');
    exit();
}

require_once 'Connect.php';
$connect = @new mysqli($host, $db_user, $db_password, $db_name);

if ($connect->connect_errno != 0) {
    echo 'Error: ' . $connect->connect_errno;
} else {
    $login = $_POST['login'];
    $password = $_POST['password'];

    $login = htmlentities($login, ENT_QUOTES, "UTF-8");

    if ($result = @$connect->query(
        sprintf(
            "SELECT * FROM login WHERE login='%s'",
            mysqli_real_escape_string($connect, $login)
        )
    )) {
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            if (password_verify($password, $row['Password'])) {
                $_SESSION['user'] = $row['Login'];
                $_SESSION['LogIn'] = true;
                $_SESSION['id'] = $row['IDlogin'];
                $result->free_result();
                header('Location: CinemaReservation.php');
            } else {
                $_SESSION['error'] = true;
                header('Location: index.php');
            }
        } else {
            $_SESSION['error'] = true;
            header('Location: index.php');
        }
    }
    $connect->close();
}