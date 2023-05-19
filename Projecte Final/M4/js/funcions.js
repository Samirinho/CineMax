document.addEventListener('DOMContentloaded', inici);

function inici() {
    console.log('Crida AJAX a arxiu');

    const xmlhttp = new XMLHttpRequest();

    xmlhttp.onload = function () {
        document.getElementById("resposta").innerHTML = this.responseText;
    }

    xmlhttp.open("GET", "consulta.php");
    xmlhttp.send();

    document.getElementById("myInput").addEventListener('keyup', myFunction);
}

function myFunction() {
    //Creacions de variables
    var input, filter, resposta, fitxa, titol, i, txtValue;

    input = document.getElementById("myInput");

    filter = input.value.toUpperCase();

    resposta = document.getElementById("resposta");

    fitxa = resposta.getElementsByClassName("fitxa");



    for (i = 0; i <= fitxa.length - 1; i++) {

        // console.log("fitxes: " + i);

        titol = fitxa[i].getElementsByTagName("p")[0];

        txtValue = titol.textContent || titol.innerText;

        if (txtValue.toUpperCase().indexOf(filter) > -1) {

            fitxa[i].style.display = "";

        } else {

            fitxa[i].style.display = "none";

        }
    }
}