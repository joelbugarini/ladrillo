
/*
 * GET home page.
 */

exports.buscar = function(req, res){
  res.render('buscar', { title: 'Ladrillo' });
  console.log("Buscar presionado" + Date.now());
};