
/**
 * Module dependencies.
 */

var express = require('express')
  , routes = {
    'index': require('./routes/').index,
    'buscar': require('./routes/buscar').index,
    'user': require('./routes/user').index,
    'vende': require('./routes/vende').index,
    'estima': require('./routes/estima').index
  }
  , user = require('./routes/user')
  , http = require('http')
  , path = require('path');

var prop = require('./dataaccess/Properties')
  , sql = require('./dataaccess/Read')
  , mysql = require('mysql');

var app = express();

// all environments
app.set('port', process.env.PORT || 1337, '192.168.1.65');
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride()); 
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) { 
  app.use(express.errorHandler());
}

console.log(routes);
app.get('/', routes['index']);
app.get('/index.html', routes['index']);
app.get('/busca.html', routes['buscar']);
app.get('/entrar.html', routes['user']); 
app.get('/entrarico.html', routes['user']); 
app.get('/vende.html', routes['vende']);
app.get('/estima.html', routes['estima']);


/*------------------------------------------------------------------------------|
|---------------------- Asynchronous iteration pattern -------------------------|
|------------------------------------------------------------------------------*/

/*
sql.readUsuarios( function(err, rows, fields) {
    if (err) throw err;

		var Usuarios = sql.fillUsuarios(rows);
		for(var i = 0; i < Usuarios.length; i++ ){
			console.log('Selected: ' + i + ' ' + Usuarios[i].Nombre);
		}
});*/


/*------------------------------------------------------------------------------
|---------------------- End Asynchronous iteration pattern ---------------------
|-----------------------------------------------------------------------------*/

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port') +' ');
});
