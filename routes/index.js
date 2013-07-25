
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index.ejs', { title: 'Inicio'  });
  console.log("Index presionado" + Date.now());
};

exports.buscar = function(req, res){
  res.render('buscar.ejs', { title: 'Buscar' });
  console.log("Buscar presionado" + Date.now());
};
