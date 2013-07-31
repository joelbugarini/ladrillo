var prop = require('./Properties');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'rareware',
  database : 'ladrillo_db',
});

connection.connect();

connection.query('SELECT * FROM usuario', function(err, rows, fields) {
  if (err) throw err;
  
  var Joel = new prop.usuario(1, "joel", "rare", 2);
  console.log(Joel.Nombre + ' the solution is: ', rows[0].Contraseña);
});

connection.end();
