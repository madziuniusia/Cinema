<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/cinema.css">
    <link rel="stylesheet" href="style/form.css">
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
    echo '<a id="LogOut" href="LogOut.php">Log Out</a>';            
    ?>

    <?php
            echo '<table id="RoomCinema"><form action="ReservationSeats.php" method="POST"> <div class="center"><p id="screen">screen</p></div>';
            $choosedMovie = $_POST['movie'];
            $_SESSION['RoomMovie'] = $choosedMovie;
            include("Connect.php");
            $mysqli = new mysqli($host, $db_user, $db_password, $db_name);
            if($mysqli->connect_errno) die('Nie można połączyć się z serwerem');
            $mysqli->query("set names utf8");

                $SeatsReserved = array("",);
                $rs = $mysqli->query("SELECT `name` FROM `reservation` INNER JOIN `cinema` ON `cinema`.`IDseats` = `reservation`.`IDseats` WHERE `IDRoom` = $choosedMovie");
                    while($rec=$rs->fetch_array()){
                        array_push($SeatsReserved, $rec['name']);
                    }
                $rs->close();

            for ($i = 1; $i <= 15; $i++) {
                echo '<tr>';
                for ($j = 1; $j <= 20; $j++) {
                    $value = "R".$i."S".$j;
                    if (array_search($value, $SeatsReserved)>0) {
                        echo '<td ><input class="reserved" disabled type="checkbox" value="'.$value.'" name="'.$value.'">' . $j . '</input></td>';
                        echo $value."<br>";
                    } else {
                        echo '<td><input type="checkbox" value="'.$value.'" name="'.$value.'">' . $j . '</input></td>';
                    }
                    
                }
                echo '<td id="row"> ROW ' . $i . '</td></tr>';
            }
            echo '<div class="center"><button class="gradient-border" id="BookSeats" type="submit">BOOK</button></div></form></table>';  
            ?>

</body>

</html>