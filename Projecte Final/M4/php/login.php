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
    <link rel="stylesheet" href="../css/login.css">
</head>

<body>
    <header class="capcalera">
        <a href="../php/index.php"><img src="../imatges/logoBln.png" href="../php/index.php" class="logo"
                alt="logo"></a>
        <nav class="opcions">
            <ul class="menu">
                <li><a href="../php/index.php">Home</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="../php/registre_usuari.php">Register</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main>

        <form class="formulari" action="../controlador/consultesLogin.php" method="post">

            <div class="contenidor text">
                <h2 class="titolform">Inicia sessió</h2>
                <p class="intro">Gaudeix de CineMax</p>
            </div>


            <div class="contenidor registre">

                <p class="camp">
                    <label for="nom" class="lletres">Usuari</label>
                    <input class="camp" type="text" name="usuari" placeholder="Usuari" autocomplete="off">
                </p>

                <p class="camp">
                    <label for="contrasenya" class="lletres">Contrasenya</label>
                    <input class="camp" type="password" name="passw" placeholder="Contrasenya">
                </p>
            </div>

            <div class="anunci">
                <p>No tens compta encara?<a href="../view/registrar_usuari_view.php"> Registra't!</a></p>
            </div>

            <div class="boto">
                <button class="botonet" type="submit" value="register" name="registrar" id="enviar">
                    <p>Iniciar sessió</p>
                </button>
            </div>

        </form>

    </main>

    <footer>
        <div class="contingutF">
            <h2>CineMax</h2>
            <div class="xarxes">
                <a href="https://es-es.facebook.com/"><i class="fa fa-facebook"></i></a>
                <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                <a href="https://www.youtube.com/"><i class="fa fa-youtube"></i></a>
                <a href="https://twitter.com/?lang=es"><i class="fa fa-twitter"></i></a>
            </div>
        </div>
    </footer>

</body>

</html>