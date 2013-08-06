var prop = require('./Properties');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'rareware',
  database : 'ladrillo_db',
});

exports.readUsuarios = function(callback){
	connection.connect();
	connection.query('call SP_usuario_SelectAll()', callback);
	connection.end();
};

exports.fillUsuarios = function fillUsuarios(rows){
	var Usuarios = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Usuarios.push(new prop.usuario(rows[0][i].idUsuario, 
									   rows[0][i].Nombre, 
									   rows[0][i].Contraseña, 
									   rows[0][i].Tipo));
	}

	return Usuarios;
}

exports.readUbicacion = function(callback){
	connection.connect();
	connection.query('call SP_ubicacion_SelectAll()', callback);
	connection.end();
};

exports.fillUbicacion = function fillUbicacion(rows){
	var Ubicacion = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Ubicacion.push(new prop.ubicacion(rows[0][i].idUbicacion, 
									   rows[0][i].Latitud, 
									   rows[0][i].Longitud));
	}

	return Ubicacion;
}