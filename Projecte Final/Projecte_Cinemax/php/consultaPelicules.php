<?php 
    require '../model/connexio.php';

    $consulta = 'SELECT * 
    FROM produccions p INNER JOIN pelicules pel ON p.ID_Produccio = pel.ID_Produccio';
    
    $result = $conn -> query($consulta);

    if ($result->num_rows > 0 ) {
        // Sortida del informacio de cada fila
        while($row = $result->fetch_assoc()) {
            // echo "<div class='fitxa'>".
            //         "<p>" .$row["titol"]. "</p>"."<p>" .$row["duracio"]." min."."</p>". 
            //         "</div>";
            echo "<div class='fitxa'>";
                //echo "<img src='./imatges/" .$row["caratula"]. "' alt='caratula'>";
                echo "<p>" . $row["Nom"]. "</p>";
                echo "<p>" .$row["Durada"]. " min.</p>";
            echo "</div>"; 
        }
    } else {
        echo "0 results";
    }

    $conn->close();
?>