<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "BDC";

$conn = mysqli_connect($host, $user, $pass, $dbname);

if (!$conn) {
    die("Échec de la connexion : " . mysqli_connect_error());
}
echo "Connexion réussie avec mysqli_connect !";

mysqli_close($conn);
?>
