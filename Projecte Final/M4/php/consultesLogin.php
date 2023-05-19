<?php
    require '../model/connexio.php';

    $usuari = $_POST['usuari'];
    $password = $_POST['passw'];

    $consulta = "SELECT * FROM compte WHERE nom_usuari = '".$usuari."' AND contrasenya ='".$password."';";
    
    $result = $conn -> query($consulta);

    $id_client= "SELECT ID_Client FROM compte WHERE nom_usuari = '".$usuari."'";

    if (EMPTY($usuari) AND EMPTY($password)) {
        require '../view/login.php';
        ECHO '<p class="formulari">NO ES POT DEIXAR ELS CAMPS EN BLANC</p>';
    } else if (EMPTY($usuari) AND !EMPTY($password)){
        require '../view/login.php';
        ECHO '<p class="formulari>"NO ES POT INICIAR SESSIO SENSE INDICA EL USUARI</p>';
    } else if (!EMPTY($usuari) AND EMPTY($password)) {
        require '../view/login.php';
        ECHO '<p class="formulari">NO ES POT INICIAR SESSIO SENSE INDICA LA CONTRASENYA</p>';
    }else if ($result -> num_rows > 1) {
        require '../view/login.php';
        echo '<p class="formulari">AQUEST USUARI " '.$usuari.' " ESTA REPETIT, TORNA A AFEGIR DE NOU EL USUARI</p>';
        // while ($row = $result -> fetch_row()) {
        //     echo "<p>Nom " .$row[0]. "</p>"; 
        //     echo "<p>Contrasenya " .$row[1]. "</p>";
        // }
    } else if ($result -> num_rows > 0)  {
        session_start();
        echo $id_client;
        //require '../view/pelicules.php';
    }else {
        require '../view/login.php';
        //introduir estils en la p de PHP
        echo '<p class="formulari">AQUEST ' .$usuari. ' NO EXISTEIX EN LA BD.</p>';
    }

    $conn->close();
?>