function initMap() { //inicializacao do mapa
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 10,
        center: { lat: -14.235, lng: -51.9253 }  // Brasil
    });

    var origem = document.getElementById('origem');
    var destino = document.getElementById('destino');

    var autocompleteOrigem = new google.maps.places.Autocomplete(origem);
    autocompleteOrigem.bindTo('bounds', map);
    autocompleteOrigem.setFields(['address_components', 'geometry', 'icon', 'name']);

    origem = origem.value;

    var autocompleteDestino = new google.maps.places.Autocomplete(destino);
    autocompleteDestino.bindTo('bounds', map);
    autocompleteDestino.setFields(['address_components', 'geometry', 'icon', 'name']);

    destino = destino.value;

    if (origem == "" || origem == "Localizacao Atual")
        origem = '13040702';// casa do usuário

    if (destino == "")
        destino = '13035270' // trabalho do usuario
    // se não tiver endereco de trabalho cadastrado, apenas colocar destino como ""

    var directionsService = new google.maps.DirectionsService; // adiciona o sertvico de direcoes para rota

    var painel = document.getElementById('right-panel');

    painel.innerHTML = ""; // limpa o painel antes de escrever a próxima rota

    var directionsDisplay = new google.maps.DirectionsRenderer({
        draggable: true, // pode mover os pontos da rota
        map: map,
        panel: painel, //escreve os dados no panel
        routingPreference: 'LESS_WALKING'
    });

    directionsDisplay.addListener('directions_changed', function () {
        computarDistanciaTotal(directionsDisplay.getDirections()); // computa a nova distância entre os pontos
    });

    definirRota(origem, destino, directionsService, directionsDisplay); // locais (partida e chegada)
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
        'Error: The Geolocation service failed.' :
        'Error: Your browser doesn\'t support geolocation.');
    infoWindow.open(map);
}

function definirRota(origin, destination, service, display) { // vai fazr a rota que tem uma origem, destino, servico e exibicao como parâmetro
    service.route({ // rota
        origin: origin, // origem
        // icon: '../home.png', 
        destination: destination,
        travelMode: 'TRANSIT',
        avoidTolls: true // evitar pedagios
    }, function (response, status) {
        if (status === 'OK') {
            display.setDirections(response);
        } else {
            alert('Não foi possível exibir rotas devido a: ' + status);
        }
    });
}

function chamarLocalizacaoAtual() {
    infoWindow = new google.maps.InfoWindow;

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            atual = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            document.getElementById('origem').value = atual.lat + "," + atual.lng;
            initMap();
        }, function () {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    }

    else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }

    initMap();
}

function computarDistanciaTotal(result) {
    var total = 0;
    var myroute = result.routes[0]; // minha rota
    for (var i = 0; i < myroute.legs.length; i++) {
        total += myroute.legs[i].distance.value;
    }
    total = total / 1000; // conversao para km
    computarEconomiaDeCO2(total);
    document.getElementById('total').innerHTML = total + ' km';
}

function computarEconomiaDeCO2(distancia) {
    var economia = 0;

    economia = ((0.6 * distancia * 5.83) - 0.6 * distancia).toFixed(2);

    document.getElementById('CO2').innerHTML = 'Você economizará na viagem ' + economia + ' kg de CO2';
}