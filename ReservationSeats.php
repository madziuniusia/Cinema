<?php
session_start();
$SeatsReserved = array();

for ($i = 1; $i <= 15; $i++) {
    for ($j = 1; $j <= 20; $j++) {
        $value = "R".$i."S".$j;
        if (isset($_POST[$value])) {
            array_push($SeatsReserved, $value);
        }
    }
}
/* echo $_SESSION['user']."<br>";
echo $_SESSION['RoomMovie']."<br>";
print_r($SeatsReserved); */

include("Connect.php");
$mysqli = new mysqli($host, $db_user, $db_password, $db_name);
if($mysqli->connect_errno) die('Nie można połączyć się z serwerem');
$mysqli->query("set names utf8");

$rs = $mysqli->query("SELECT `IDLogin` FROM `login` WHERE `Login` ='".$_SESSION['user']."'");
    while($rec=$rs->fetch_array()){$UserName=$rec;}
$rs->close(); 

echo $UserName["IDLogin"];



for ($i=0; $i < count($SeatsReserved) ; $i++) { 

$rs = $mysqli->query("SELECT `IdSeats` FROM `cinema` WHERE `name` ='$SeatsReserved[$i]'");
    while($rec=$rs->fetch_array()){$RoomMovie=$rec;}
$rs->close(); 
$mysqli->query("INSERT INTO `reservation` (`IDReservation`, `IDRoom`, `IDlogin`, `IDseats`) VALUES (NULL,".$_SESSION['RoomMovie'].",".$UserName['IDLogin'].",".$RoomMovie['IdSeats'].")");
}
header('Location: CinemaReservation.php');
?>