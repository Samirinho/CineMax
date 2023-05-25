<?php

    session_start();
    $nomusuari = isset($_SESSION['Nom_Usuari']) ? $_SESSION['Nom_Usuari'] : "" ;

    require '../php/connexioBD.php';

    $consulta = 'SELECT * FROM produccions p INNER JOIN pelicules pel ON p.ID_Produccio = pel.ID_Produccio';

    //$consultaID= "SELECT ID_Client FROM compte WHERE nom_usuari = '".$nomusuari."'";

    $consultaID = "SELECT ID_Client FROM compte WHERE nom_usuari = 'user123' ";

    $result = $conn->query($consulta);

    $result2 = $conn->query($consultaID);

    if ($result2 -> num_rows > 0) {
        $row = $result2 ->fetch_assoc();
        $idClient = $row["ID_Client"];
    } else {
        echo "no s'ha trobat cap pelicula";
    }

    echo $idClient;

    if ($result->num_rows > 0) {
        // Sortida del informacio de cada fila
        while ($row = $result->fetch_assoc()) {
            echo "<div class='fitxaPelicules'>";
            echo "<img src=' ../imatges/" . $row["Caratula"]. "' alt='imatges'>";
            echo '<p>'.$row['Nom'].'</p>';
            echo '<p>'.$row['Durada'].'</p>';
               
            echo "</div>";
        }
    } else {
        echo "0 results";
    }

    $conn->close();
?>