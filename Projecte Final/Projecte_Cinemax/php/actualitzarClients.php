<?php

    require '../model/connexio.php';

    $nomcomplet = $_POST["nomcli"];
    $nomusuari = $_POST["usuari"];
    $contrasenya = $_POST["contra"];
    $correu = $_POST["correu"];
    $dni = $_POST["dni"];
    $telefon = $_POST["tel"];
    $naixement = $_POST["dataN"];
    $adreça = $_POST["adreça"];
    $nacionalitat = $_POST["nacionalitat"];
    $targeta = $_POST["numtar"];
    $banc = $_POST["numban"];
    
    $id_client= "SELECT ID_Client FROM compte WHERE nom_usuari = '".$nomusuari."'";
    
    $result2 = $conn -> query($id_client);


    $consulta = "UPDATE clients SET Nom = " .$nomcomplet .",Email = " .$correu. ",Telefon = " .$telefon. " ,DNI = " .$dni. " ,Edat =" .$naixement. " ,Adreça=" .$adreça. " ,Nacionalitat =" .$nacionalitat. " ,Num_Tarjeta =" .$targeta. ", Num_Compte_Banc=" .$banc. 
    
    "WHERE ID_Client = '".$id_client."';";
    
    $consultaCom = "UPDATE compte SET Nom_Usuari =".$nomusuari.", Contrasenya =".$contrasenya." WHERE ID_Client = " .$id_client;

    $result = $conn->query($consulta);

    $result2 = $conn->query($consultaCom);

    if($result && $result2){
        require '../VIEWS/modificacioDadesCorrecte.php';  
    } else {
        Echo 'no fet';
    }

    $conn->close();

?>