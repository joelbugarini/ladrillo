exports.index = function(req, res){
  res.render('vende.ejs', { title: 'Inicio'  });
  console.log("Vende presionado" + Date.now());
};