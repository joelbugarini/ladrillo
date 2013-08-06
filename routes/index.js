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

			res.render('buscar.ejs', { title: Ubicacion[0].Latitud+','+Ubicacion[0].Longitud});
			console.log("Buscar presionado" + Date.now());

	});
};
