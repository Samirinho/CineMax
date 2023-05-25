<?php
     session_start();
     $nomusuari = isset($_SESSION['Nom_Usuari']) ? $_SESSION['Nom_Usuari'] : "" ;

    require 'views/series_view.php';

?>