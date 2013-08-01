var prop = require('./Properties');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'rareware',
  database : 'ladrillo_db',
});

connection.connect();

var Usuarios = new Array();

connection.query('call SP_usuario_SelectAll()', function(err, rows, fields) {
  if (err) throw err;

  	for(var i = 0; i < rows[0].length; i++ ){
		Usuarios.push(new prop.usuario(rows[0][i].idUsuario, 
									   rows[0][i].Nombre, 
									   rows[0][i].Contraseña, 
									   rows[0][i].Tipo));
		//console.log('Selected: ' + i + Usuarios[i].Nombre);
	}
});

connection.end();

for(var i = 0; i < 3; i++ ){
		console.log('Selected: ' + i + " " + Usuarios.Nombre);
	}
