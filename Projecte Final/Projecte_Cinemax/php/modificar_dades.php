<?php

    session_start();
    $nomusuari = isset($_SESSION['Nom_Usuari']) ? $_SESSION['Nom_Usuari'] : "" ;

    require '../php/views/modificar_dades_view.php';
    require '../php/views/actualitzarClients.php';

?>