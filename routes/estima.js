var prop = require('../dataaccess/Properties')
  , Create = require('../dataaccess/Create')
  , mysql = require('mysql');

exports.index = function(req, res){
	Create.Agente( function(err, rows, fields) {
		if (err) throw err;

		  
		  res.render('estima.ejs', { title: 'Inicio'  });
		  console.log("Estima presionado" + Date.now());

	},req,res);
};

