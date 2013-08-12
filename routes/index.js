var prop = require('../dataaccess/Properties')
  , sql = require('../dataaccess/Read')
  , mysql = require('mysql');



exports.index = function(req, res){
  res.render('index.ejs', { title: 'Inicio'  });
  console.log("Index presionado" + Date.now());
};
