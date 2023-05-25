<?php

    require '../php/connexioBD.php';

    session_start();

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

    $consultaID= "SELECT ID_Client FROM compte WHERE nom_usuari = '".$nomusuari."'";
    
    $consultaIDClient = $conn -> query($consultaID);
    
    $idClientUsuari = null;

    if ($consultaIDClient -> num_rows > 0) {
        $row = $consultaIDClient ->fetch_assoc();
        $idClientUsuari = $row["ID_Client"];
    }
    
    $consultaClients = "UPDATE clients SET Nom = " .$nomcomplet .",Email = " .$correu. ",Telefon = " .$telefon. " ,DNI = " .$dni. " ,Edat =" .$naixement. " ,Adreça=" .$adreça. " ,Nacionalitat =" .$nacionalitat. " ,Num_Tarjeta =" .$targeta. ", Num_Compte_Banc=" .$banc.   
    
    "WHERE ID_Client = '".$idClientUsuari."';";
    
    $consultaCompte = "UPDATE compte SET Nom_Usuari =".$nomusuari.", Contrasenya =".$contrasenya." WHERE ID_Client = " .$idClientUsuari;

    if ($conn->query($consultaClients) && $conn->query($consultaCompte)) {
        echo 'Les dades shan canviat';
    } else {
        echo 'hi ha hagut un problema';
        echo $nomusuari;
    }


    // $result = $conn->query($consulta);

    // $result2 = $conn->query($consultaCom);

    // if($result && $result2){
    //     require '../VIEWS/modificacioDadesCorrecte.php';  
    // } else {
    //     Echo 'no fet';
    // }

    $conn->close();

?>