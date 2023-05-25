document.addEventListener('DOMContentLoaded', inici);

function inici() {
    console.log('Crida AJAX arxiu consulta.php');

    const xmlhttp = new XMLHttpRequest();

    xmlhttp.onload = function() {
        document.getElementById("series").innerHTML = this.responseText;
    }
    xmlhttp.open("GET", "../php/consulta_series.php");
    xmlhttp.send();

    document.getElementById("myInput").addEventListener('keyup', myFunction);
}


function myFunction() {
    var input, filter, series, serie, i, titol;

    input = document.getElementById("myInput");

    filter = input.value.toUpperCase();

    series = document.getElementById("series");

    serie = series.getElementsByClassName("fitxes");

    for (i = 0; i < serie.length; i++) {
        titol = serie[i].getElementsByTagName("p")[0];

        txtValue = titol.textContent || titol.innerText;

        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            serie[i].style.display = "";
        } else {
            serie[i].style.display = "none";
        }
    }
}