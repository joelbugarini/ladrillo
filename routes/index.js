
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Ladrillo' });
  console.log("Index presionado" + Date.now());
};

exports.buscar = function(req, res){
  res.render('buscar', { title: 'Ladrillo' });
  console.log("Buscar presionado" + Date.now());
};