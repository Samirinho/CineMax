<?php
session_start();



// echo ('Consulta a php');
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "cinemax";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connexió establerta <br><br>";
}

?>