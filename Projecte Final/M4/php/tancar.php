<?php
    session_start();
    session_destroy();

    echo "Tanquem sessió";
    header('Location: login.php');

    
?>