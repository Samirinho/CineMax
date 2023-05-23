<?php
    session_start();
    session_destroy();

    echo "Tancar sessió";
    header("Location: ../php/login.php");
    exit();

    
?>