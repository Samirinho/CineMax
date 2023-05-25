<?php
        session_start();
        $nomusuari = isset($_SESSION['Nom_Usuari']) ? $_SESSION['Nom_Usuari'] : "" ;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Play&display=swap" rel="stylesheet">
    <title>CineMax</title>
    <link rel="shortcut icon" href="../imatges/logoBln.png" type="image/x-icon" class="logo">
    <link rel="stylesheet" href="../css/service.css">
</head>

<body>
    <header class="capcalera">
        <a href="../php/cinemax.php"><img src="../imatges/logoBln.png" class="logo" alt="logo"></a>
        <nav class="opcions">
			<ul class="menu">
				<li><a href="../php/cinemax.php">Home</a></li>
				<li><a href="../php/pelicules.php">Pelicules</a></li>
				<li><a href="../php/series.php">Series</a></li>
                <li><a href="../php/modificar_dades.php">Modificar Dades</a></li>
                <li><a href="../php/tancar.php"><i class="fa fa-sign-out" style="font-size:25px"></i></a></li>
			</ul>
        </nav>
    </header>


    <main>

    <h1 class="titolservice">Proves Web Service</h1>

    <div id="consulta">

        <input type="checkbox" id="sql">
        <input type="text" id="peli">
        <input type="button" value="cercar" id="cercar">

    </div>

    <div id="contingut"></div>

    <script src="../js/api_peli.js"></script>
    </main>

</body>
</html>