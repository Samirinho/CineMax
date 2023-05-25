<?php
    session_start();
    session_destroy();

    echo "Tancar sessió";
    header("Location: ../php/index.php");
    exit();

    
?>