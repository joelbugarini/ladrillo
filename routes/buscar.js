var prop = require('../dataaccess/Properties')
  , Read = require('../dataaccess/Read')
  , mysql = require('mysql');


exports.index = function(req, res){
	Read.Ubicacion( function(err, rows, fields) {
		if (err) throw err;

			var Ubicacion = Read.fillUbicacion(rows);
			var lat = '';
			for(var i = 0; i < Ubicacion.length; i++ ){
				lat += 'var marker = new google.maps.Marker({'+
            'position: new google.maps.LatLng(' + Ubicacion[i].Latitud+','+Ubicacion[i].Longitud +'),'+
            'map: map, '+
            'title: \'Usuario\' '+
            '});';
			}
			res.render('buscar.ejs', { title: lat});
			console.log("Buscar presionado" + Date.now());

	});
};