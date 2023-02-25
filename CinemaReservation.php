<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/form.css">
    <!-- <link rel="stylesheet" href="style/cinema.css"> -->
    <link rel="stylesheet" href="style/reservation.css">
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
    echo ' <div id="container">';

    echo '<div id="NameUser">HI ' . $_SESSION['user'] . '!</div>\n';
    echo '<a id="LogOut" href="LogOut.php">Log Out</a>';          

    ?>
    <form action="Reservation.php" method="post">
        <label for="movie">Choose a movie:</label>
        <select id="movie" name="movie">
            <?php
            include("Connect.php");
                $mysqli = new mysqli($host, $db_user, $db_password, $db_name);
                if($mysqli->connect_errno) die('Nie można połączyć się z serwerem');
                $mysqli->query("set names utf8");
                
                $rs = $mysqli->query("SELECT `IDRoom`,`data`, `time`, `name` FROM `room` INNER JOIN `movie` ON `room`.`IDMovie` = `movie`.`IDMovie`");
                    while($rec=$rs->fetch_array()){
                        echo "<option value='".$rec['IDRoom']."'>".$rec['name']." ".$rec['data']." ".$rec['time']."</option>";
                    }
                $rs->close(); 
            ?>
        </select>
        <button type="submit">Zarezerwuj</button>
    </form>
    </div>

</body>

</html>