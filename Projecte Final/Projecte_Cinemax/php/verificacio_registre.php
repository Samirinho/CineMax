<?php

require ('../php/views/registrar_usuari_view.php');
include ('connexioBD.php');

if (isset($_POST['registrar'])) {
    if (

        strlen($_POST['usuari']) >= 1 &&
        strlen($_POST['contra']) >= 1 &&
        strlen($_POST['email']) >= 1
    ) {
        $nomusuari = $_POST["usuari"];
        $contrasenya = $_POST["contra"];
        $correu = $_POST["email"];
    
        $sql1 = "SELECT Nom_Usuari FROM compte WHERE Nom_Usuari= '$nomusuari'";
        $result1 = $conn->query($sql1);
    
    
        $sql2 = "SELECT Email FROM clients WHERE Email= '$correu'";
        $result2 = $conn->query($sql2);
    
        if(mysqli_num_rows($result1)>0 || mysqli_num_rows($result2)>0) {
            echo "Usuari o Correu existents";
        } else {
            $sql_ins1 = "INSERT INTO clients (Email) VALUES('$correu')";
            mysqli_query($conn, $sql_ins1);
            $id_client = mysqli_insert_id($conn);
            $sql_ins2 = "INSERT INTO compte (Nom_Usuari, Contrasenya, ID_Client, ID_Modalitat) VALUES('$nomusuari', '$contrasenya', '$id_client', 1)";
            mysqli_query($conn, $sql_ins2);
    
            echo "El usuari s'ha registrat correctament";
            
        }
        
    
    } else {
        echo "Completa els camp";
    }
}


$conn->close();


?>