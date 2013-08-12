
/*
 * GET users listing.
 */

exports.index = function(req, res){
  res.render('user.ejs', { title: 'Inicio'  });
  console.log("Users presionado" + Date.now());
};