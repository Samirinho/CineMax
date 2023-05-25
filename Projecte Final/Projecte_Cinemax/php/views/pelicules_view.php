
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
    <link rel="stylesheet" href="../css/estilspelis.css">
    <link rel="stylesheet" href="../css/pelicules.css">
    <script src='../js/funcioPelicules.js'></script>
</head>

<body>

<header class="capcalera">
        <a href="../php/index.php"><img src="../imatges/logoBln.png" href="../php/index.php" class="logo"
                alt="logo"></a>
        <nav class="opcions">
            <ul class="menu">
                <li><a href="../php/cinemax.php">Home</a></li>
                <li><a href="../php/series.php">Series</a></li>
                <li><a href="../php/modificar_dades.php">Modificar Dades</a></li>
                <li><a href="../php/web_Service.php">Web Service</a></li>
                <div class="username">

                    <?php
                        echo $nomusuari;
                    ?>

                </div>
                <li><a href="../php/tancar.php"><i class="fa fa-sign-out" style="font-size:25px"></i></a></li>
            </ul>
        </nav>
    </header>


    <main>

        <div class="layoutPelis">
            
            <div id="menuCataleg">
                
                <form action="" id="buscarPeli">
                    <i class="fa fa-search" style="font-size:20px"></i>
                    <input type="search" placeholder="Buscar en el cataleg" id='myInput'>
                </form>
            </div>
            
            <div id='consultaPelis'></div>

        </div>
    </main>

</body>

</html>