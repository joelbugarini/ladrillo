var prop = require('../properties/Properties')
  , sql = require('../properties/Connection')
  , mysql = require('mysql');

exports.index = function(req, res){
  res.render('index.ejs', { title: 'Inicio'  });
  console.log("Index presionado" + Date.now());
};


exports.buscar = function(req, res){
	sql.readUbicacion( function(err, rows, fields) {
		if (err) throw err;

			var Ubicacion = sql.fillUbicacion(rows);
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
