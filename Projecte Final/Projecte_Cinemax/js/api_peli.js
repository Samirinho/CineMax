document.addEventListener('DOMContentLoaded', ()=>{

    let cercar = document.getElementById('cercar');
    cercar.addEventListener('click',()=>{

        peli = document.getElementById('peli').value;
        
        consultar(peli);


    });

    async function consultar(peli) {
        let consultaAPI = await fetch('http://www.omdbapi.com/?apikey=49c9f4a0&t='+peli+'&r=xml');

        let dades = await consultaAPI.text();

        parser = new DOMParser();
        xmlDoc = parser.parseFromString(dades, 'text/xml')

        // console.log(xmlDoc);

        titol = xmlDoc.getElementsByTagName('movie')[0].getAttribute('title');
        genere = xmlDoc.getElementsByTagName('movie')[0].getAttribute('genre');
        data = xmlDoc.getElementsByTagName('movie')[0].getAttribute('year');
        actors = xmlDoc.getElementsByTagName('movie')[0].getAttribute('actors');
        duracio = xmlDoc.getElementsByTagName('movie')[0].getAttribute('runtime');
        sinopsis = xmlDoc.getElementsByTagName('movie')[0].getAttribute('plot');
        nota = xmlDoc.getElementsByTagName('movie')[0].getAttribute('imdbRating');
        caratula = xmlDoc.getElementsByTagName('movie')[0].getAttribute('poster');
        
        document.getElementById('contingut').innerHTML = ` <h2>${titol} (${data})</h2>
                                                          <div id= 'dades'>
                                                            <div id = 'info'>
                                                                <p><span>Gènere: </span>${genere} - ${duracio}</p>
                                                                <p><span>Actors: </span>${actors}</p>
                                                                <p><span>Argument: </span>${sinopsis}</p>
                                                                <p><span>Nota IMDB: </span>${nota}</p>
                                                            </div>
                                                            <img src=${caratula} alt='poster' id='poster'
                                                            
                                                          </div>`;
    }

});