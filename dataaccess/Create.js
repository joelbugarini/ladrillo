var prop = require('./Properties');
var mysql = require('mysql');

var sqlParam = {
  host     : 'localhost',
  user     : 'root',
  password : 'rareware',
  database : 'ladrillo_db',
};

exports.readAgente = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	agente.Usuario_idUsuario
	connection.query('call SP_agente_Create('++')', callback);
	connection.end();
};