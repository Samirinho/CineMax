<?php

    require '../php/connexioBD.php';
    
    $nomusuari = $_POST['usuari'];
    $password = $_POST['passw'];

    $consulta = "SELECT * FROM compte WHERE Nom_Usuari = '".$nomusuari."' AND Contrasenya ='".$password."';";
    
    $result = $conn -> query($consulta);

    $id_client= "SELECT ID_Client FROM compte WHERE Nom_Usuari = '".$nomusuari."'";

    if (EMPTY($nomusuari) AND EMPTY($password)) {
        require '../php/index.php';
        ECHO '<p class="formulari">NO ES POT DEIXAR ELS CAMPS EN BLANC</p>';
    } else if (EMPTY($nomusuari) AND !EMPTY($password)){
        require '../php/index.php';
        ECHO '<p class="formulari>"NO ES POT INICIAR SESSIO SENSE INDICA EL USUARI</p>';
    } else if (!EMPTY($nomusuari) AND EMPTY($password)) {
        require '../php/index.php';
        ECHO '<p class="formulari">NO ES POT INICIAR SESSIO SENSE INDICA LA CONTRASENYA</p>';
    }else if ($result -> num_rows > 1) {
        require '../php/index.php';
        echo '<p class="formulari">AQUEST USUARI " '.$nomusuari.' " ESTA REPETIT, TORNA A AFEGIR DE NOU EL USUARI</p>';
        // while ($row = $result -> fetch_row()) {
        //     echo "<p>Nom " .$row[0]. "</p>"; 
        //     echo "<p>Contrasenya " .$row[1]. "</p>";
        // }
    } else if ($result -> num_rows > 0)  {

    
        require '../php/cinemax.php';
    }else {
        require '../php/index.php';
        //introduir estils en la p de PHP
        echo '<p class="formulari">AQUEST ' .$nomusuari. ' NO EXISTEIX EN LA BD.</p>';
    }

    $conn->close();
?>