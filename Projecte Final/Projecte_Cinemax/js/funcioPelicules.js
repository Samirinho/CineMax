document.addEventListener('DOMContentLoaded', cridaPelicules);


function cridaPelicules () {
    
    console.log('Adeeeue');

    const xmlhttp = new XMLHttpRequest();

    xmlhttp.onload = function () {
        document.getElementById("consultaPelis").innerHTML = this.responseText;
    }

    xmlhttp.open("POST", "consultaPelicules.php");

    xmlhttp.send();

    document.getElementById("myInput").addEventListener('keyup', myFunction);
}


function myFunction() {
    //Creacions de variables
    var input, filter, pelicules, fitxa, titol, i, nom,txtValue;
  
    input = document.getElementById("myInput");
  
    filter = input.value.toUpperCase();
  
    pelicules = document.getElementsByClassName("fitxaPelicules");

    //fitxa = pelicules.getElementsByClassName("fitxaPelicules");

    for (i = 0; i <= pelicules.length - 1; i++) {
    
        titol = pelicules[i].getElementsByTagName("p")[0];
    
        txtValue = nom.textContent || titol.innerText;
    
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
    
          fitxa[i].style.display = "";
    
        } else {
    
          fitxa[i].style.display = "none";
    
        }
    }

}