var prop = require('../properties/Properties')
  , sql = require('../properties/Connection')
  , mysql = require('mysql');



exports.index = function(req, res){
  res.render('index.ejs', { title: 'Inicio'  });
  console.log("Index presionado" + Date.now());
};
