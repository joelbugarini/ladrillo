var prop = require('./Properties');
var mysql = require('mysql');

var sqlParam = {
  host     : 'localhost',
  user     : 'root',
  password : 'rareware',
  database : 'ladrillo_db',
};

exports.Agente = function(callback, req, res){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	console.log('CreateAgente'+ req.body.user.name);
	connection.query('SELECT 1+1', callback);
	connection.end();
};