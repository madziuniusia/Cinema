<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/form.css">
    <link rel="stylesheet" href="style/cinema.css">
    </script>
</head>

<body>
    <?php
    session_start();
    if (!($_SESSION['LogIn'])) {
        header('Location: index.php');
        exit();
    }

    unset($_SESSION['error']);

    echo '<div id="NameUser">HI ' . $_SESSION['user'] . '!</div>';
    echo '<a id="LogOut" href="LogOut.php">Log Out</a>'
    ?>

    <table id="RoomCinema">
        <form action="Reservation.php" method="post">
            <div class="center">
                <p id="screen">screen</p>
            </div>
            <?php
            for ($i = 1; $i <= 15; $i++) {
                echo '<tr>';
                for ($j = 1; $j <= 20; $j++) {
                    echo '<td><input type="checkbox" name="R' . $i . 'S' . $j . '">' . $j . '</input></td>';
                }
                echo '<td id="row"> ROW ' . $i . '</td></tr>';
            }
            ?>
            <div class="center"><button class="gradient-border" id="BookSeats" type="submit">BOOK</button></div>
        </form>
    </table>
</body>

</html>