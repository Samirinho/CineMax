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
    <link rel="stylesheet" href="../css/register.css">
</head>

<body>
    <header class="capcalera">
        <a href="../php/index.php"><img src="../imatges/logoBln.png" href="../php/index.php" class="logo"
                alt="logo"></a>
        <nav class="opcions">
            <ul class="menu">
                <li><a href="../php/index.php">Home</a></li>
                <li><a href="../php/login.php">Login</a></li>
                <li><a href="../php/registre_usuari.php">Register</a></li>
                
            </ul>
        </nav>
    </header>

    <main>

        <form class="formulari" action="../php/verificacio_registre.php" method="post">

            <div class="contenidor text">
                <h2 class="titolform">Modificar dades</h2>
                <p class="intro">Modifica les teves dades de compte a CineMax</p>
            </div>


            <div class="contenidor registre">
                <div class="bloc1">

                    <p class="camp">
                        <label for="nom" class="lletres">Nom Complet</label>
                        <input class="camp" type="text" name="nomcli" placeholder="Nom Complet">
                    </p>

                    <p class="camp">
                        <label for="nom" class="lletres">Usuari</label>
                        <input class="camp" type="text" name="usuari" placeholder="Usuari">
                    </p>

                    <p class="camp">
                        <label for="contrasenya" class="lletres">Contrasenya</label>
                        <input class="camp" type="password" name="contra" placeholder="Contrasenya">
                    </p>

                    <p class="camp">
                        <label for="correu" class="lletres">Correu</label>
                        <input class="camp" type="email" name="correu" placeholder="Correu">
                    </p>

                    <p class="camp">
                        <label for="dni" class="lletres">DNI</label>
                        <input class="camp" type="text" name="dni" value="" size="10" maxlength="9" placeholder="DNI">
                    </p>

                    <p class="camp">
                        <label for="nom" class="lletres">Telèfon</label>
                        <input class="camp" type="tel" size="9" name="tel" placeholder="Telèfon">
                    </p>
                </div>

                <!-- Separació entre inputs -->

                <div class="bloc2">
                    <p class="camp">
                        <label for="nom" class="lletres">Data Neixament</label>
                        <input class="camp" type="date" name="dataN" placeholder="Edat">
                    </p>

                    <p class="camp">
                        <label for="nom" class="lletres">Adreça</label>
                        <input class="camp" type="text" name="adreça" placeholder="Adreça">
                    </p>

                    <p class="camp">
                        <label for="nom" class="lletres">Nacionalitat</label>
                        <input class="camp" type="text" name="nacionalitat" placeholder="Nacionalitat">
                    </p>

                    <p class="camp">
                        <label for="nom" class="lletres">Número Targeta</label>
                        <input class="camp" type="text" name="numtar" placeholder="Número Targeta">
                    </p>

                    <p class="camp">
                        <label for="nom" class="lletres">Núm Compte Bancari</label>
                        <input class="camp" type="text" name="numban" placeholder="Núm Compte Bancari">
                    </p>

                    <p class="camp">
                    <label for="nom" class="lletres">Escull modalitat</label>
                    
                    <select name="opcions" class="camp"> 
                        <option value="0"></option> 
                        <option value="1">Gratis</option> 
                        <option value="2">Bàsica</option> 
                        <option value="3">Premium</option> 
                    </select>
                    </p>
                </div>
            </div>

            <div class="boto">
                <button class="botonet" type="submit" value="register" name="registrar" id="enviar">
                    <p>Desa canvis</p>
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