<?php

session_start();
$nomusuari = isset($_SESSION['Nom_Usuari']) ? $_SESSION['Nom_Usuari'] : "" ;

    require '../php/views/pelicules_view.php';

?>