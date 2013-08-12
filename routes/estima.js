exports.index = function(req, res){
  res.render('estima.ejs', { title: 'Inicio'  });
  console.log("Index presionado" + Date.now());
};