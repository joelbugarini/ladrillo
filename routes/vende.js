exports.index = function(req, res){
  res.render('vende.ejs', { title: 'Inicio'  });
  console.log("Index presionado" + Date.now());
};