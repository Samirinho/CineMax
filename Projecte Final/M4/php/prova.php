<?php


require 'connexioBD.php';

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
// $id_modalitat= $_POST["opcions"];

$id_modalitat = 1;


$consultaCli = "INSERT INTO clients (Nom, Email, Telefon, DNI, Data_Naixement, Adreça, Nacionalitat, Num_Targeta, Num_Compte_Banc) 
values ('$nomcomplet','$correu','$dni','$telefon','$naixement','$adreça','$nacionalitat','$targeta','$banc')";

$id_client= $conn-> insert_id;



// echo "$consultaCli";

    // Condició per a modalitats
    
        if (isset($_POST['opcions'])) {
            $opcions=mysqli_real_escape_string($conn, $_POST['opcions']);
            if ($opcions == "1") {
                $id_modalitat = 1;
            }elseif ($opcions == "2") {
                $id_modalitat = 2;
            }elseif ($opcions == "3") {
                $id_modalitat = 3;
            }
        }

        echo $id_modalitat;
        $consultaCom = "INSERT INTO compte (ID_Client, ID_Modalitat, Nom_Usuari , Contrasenya) values ('$id_client', '$id_modalitat','$nomusuari','$contrasenya')";

        if ($conn->query($consultaCli)) {
            echo "Funciona!";
            require 'index.php';
        } else {
            echo "Error";
        }

        if ($resultatCom = $conn->query($consultaCom)) {
            echo "Funciona!";
            require 'index.php';
        } else {
            echo "Error";
            echo $id_modalitat;
        }

        /**GUARDAR SELECCIÓ MODLITAT**/ 

        




$conn->close();


?>