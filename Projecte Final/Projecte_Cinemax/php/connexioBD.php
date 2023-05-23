<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "cinemax";


// Creant la Connexió
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

// Comprovació Connexió
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    // echo "Connexió establerta <br><br>";
}

?>