
/**
 * Module dependencies.
 */

var express = require('express')
  , routes = require('./routes')
  , user = require('./routes/user')
  , http = require('http')
  , path = require('path');

var prop = require('./properties/Properties')
  , sql = require('./properties/Connection');

var app = express();

// all environments
app.set('port', process.env.PORT || 1337, '192.168.6.19');
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
 
app.get('/', routes.index);
app.get('/index.html', routes.index);
app.get('/busca.html', routes.buscar);
app.get('/users', user.list); 

var Joel = new prop.usuario(1, "joel", "rare", 2);

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port') +' '+ Joel.Nombre);
});
