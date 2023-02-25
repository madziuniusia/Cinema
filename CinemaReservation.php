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
    echo ' <div id="container">';

    echo '<div id="NameUser">HI ' . $_SESSION['user'] . '!</div>';
    echo '<a id="LogOut" href="LogOut.php">Log Out</a>';          

    ?>

    <form action="Reservation.php" method="post" class='customSelect'>
        <label for="movie">Choose a movie:</label>
        <select id="movie" name="movie" class='customSelect'>
            <?php
            include("Connect.php");
                $mysqli = new mysqli($host, $db_user, $db_password, $db_name);
                if($mysqli->connect_errno) die('Nie można połączyć się z serwerem');
                $mysqli->query("set names utf8");
                
                $rs = $mysqli->query("SELECT `IDRoom`,`data`, `time`, `name` FROM `room` INNER JOIN `movie` ON `room`.`IDMovie` = `movie`.`IDMovie`");
                    while($rec=$rs->fetch_array()){
                        echo "<option class='customSelect' value='".$rec['IDRoom']."'>".$rec['name']." ".$rec['data']." ".$rec['time']."</option>";
                    }
                $rs->close(); 
            ?>
            <!--   <option value="FreeAvatar">Avatar: The Way of Water (3h 12min)</option>
            <option value="FreePussInBoots2">Puss in Boots: The Last Wish (1h 40min)</option>
            <option value="FreeMomias">Momias (1h 28min)</option>
            <option value="FreeM3GAN">M3GAN (1h 42min)</option> -->
        </select>
    </form>
    </div>

</body>

</html>