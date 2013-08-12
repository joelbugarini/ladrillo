exports.index = function(req, res){
  res.render('estima.ejs', { title: 'Inicio'  });
  console.log("Estima presionado" + Date.now());
};