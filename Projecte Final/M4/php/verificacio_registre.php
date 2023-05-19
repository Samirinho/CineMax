<?php
    if (!empty($_POST["registrar"])) {
        

        if (empty($_POST["usuari"]) or empty($_POST["contra"])or empty($_POST["correu"])or empty($_POST["dni"])
                                    or empty($_POST["tel"])or empty($_POST["dataN"])or empty($_POST["adreça"])
                                    or empty($_POST["nacionalitat"])or empty($_POST["numtar"])
                                    or empty($_POST["numban"]) ) {
            echo 'Un dels camps està buit' 
        }else {
            echo 'Connexió satisfactória'
        }
    }



?>