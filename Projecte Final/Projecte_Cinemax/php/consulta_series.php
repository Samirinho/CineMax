<?php
    session_start();

    

    // echo ('Consulta a php');
    $servername = "localhost:3306";
    $username = "root";
    $password = "1234";
    $dbname = "cinemax";

    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    

    $sql = "SELECT s.Caratula, p.Nom, p.Anys, p.ID_Produccio FROM series AS s INNER JOIN produccions AS p ON p.ID_Produccio = s.ID_Produccio";
    $result = $conn->query($sql);


    /******Prova amb pelicules*******/

    if ($result->num_rows > 0) {
        
        while($row = $result->fetch_assoc()) {
            echo "<div class='fitxes'>";
            echo "<img src='../imatges/"  . $row["Caratula"]. "' alt='caratula'>";
            echo "<p>" . $row["Nom"] . " </p> ";
            echo "<p> " . $row["Anys"]. " </p>";
            // echo "<p>" . $row["Preferit"] . " </p> ";
            echo "</div>";
        }
        
    } else{
        echo "0 results";
    }
      $conn->close();  
?>