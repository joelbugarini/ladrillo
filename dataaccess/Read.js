var prop = require('./Properties');
var mysql = require('mysql');

var sqlParam = {
  host     : 'localhost',
  user     : 'root',
  password : 'rareware',
  database : 'ladrillo_db',
};

exports.readAgente = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_agente_SelectAll()', callback);
	connection.end();
};
exports.fillAgente = function fillAgente(rows){
	var Agente = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Agente.push(new prop.agente(
                        rows[0][i].idAgente,
                        rows[0][i].Usuario_idUsuario,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Direccion,
                        rows[0][i].Telefonos,
                        rows[0][i].Especialista,
                        rows[0][i].Contribuciones,
                        rows[0][i].Fecha));
	}

	return Agente; 
}
exports.readAgentecriticas = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_agentecriticas_SelectAll()', callback);
	connection.end();
};
exports.fillAgentecriticas = function fillAgentecriticas(rows){
	var Agentecriticas = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Agentecriticas.push(new prop.agentecriticas(
                        rows[0][i].idAgenteCriticas,
                        rows[0][i].Agente_idAgente,
                        rows[0][i].Critica_idCritica));
	}

	return Agentecriticas; 
}
exports.readAislamiento = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_aislamiento_SelectAll()', callback);
	connection.end();
};
exports.fillAislamiento = function fillAislamiento(rows){
	var Aislamiento = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Aislamiento.push(new prop.aislamiento(
                        rows[0][i].idAislamiento,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Aislamiento; 
}
exports.readCalefaccion = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_calefaccion_SelectAll()', callback);
	connection.end();
};
exports.fillCalefaccion = function fillCalefaccion(rows){
	var Calefaccion = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Calefaccion.push(new prop.calefaccion(
                        rows[0][i].idCalefaccion,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Calefaccion; 
}
exports.readCasa = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_casa_SelectAll()', callback);
	connection.end();
};
exports.fillCasa = function fillCasa(rows){
	var Casa = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Casa.push(new prop.casa(
                        rows[0][i].idCasa,
                        rows[0][i].Ubicacion_idUbicacion,
                        rows[0][i].Construccion_idConstruccion,
                        rows[0][i].Terreno_idTerreno));
	}

	return Casa; 
}
exports.readCasaservicios = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_casaservicios_SelectAll()', callback);
	connection.end();
};
exports.fillCasaservicios = function fillCasaservicios(rows){
	var Casaservicios = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Casaservicios.push(new prop.casaservicios(
                        rows[0][i].idCasaServicios,
                        rows[0][i].Casa_idCasa,
                        rows[0][i].Servicio_idServicio,
                        rows[0][i].Distancia));
	}

	return Casaservicios; 
}
exports.readCerramiento = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_cerramiento_SelectAll()', callback);
	connection.end();
};
exports.fillCerramiento = function fillCerramiento(rows){
	var Cerramiento = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Cerramiento.push(new prop.cerramiento(
                        rows[0][i].idCerramiento,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Cerramiento; 
}
exports.readChimenea = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_chimenea_SelectAll()', callback);
	connection.end();
};
exports.fillChimenea = function fillChimenea(rows){
	var Chimenea = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Chimenea.push(new prop.chimenea(
                        rows[0][i].idChimenea,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Chimenea; 
}
exports.readConstruccion = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_construccion_SelectAll()', callback);
	connection.end();
};
exports.fillConstruccion = function fillConstruccion(rows){
	var Construccion = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Construccion.push(new prop.construccion(
                        rows[0][i].idConstruccion,
                        rows[0][i].Metros,
                        rows[0][i].Cuarto,
                        rows[0][i].Baño,
                        rows[0][i].Estacionamiento,
                        rows[0][i].Cocina,
                        rows[0][i].Sala,
                        rows[0][i].Plantas));
	}

	return Construccion; 
}
exports.readConstruccionmaterial = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_construccionmaterial_SelectAll()', callback);
	connection.end();
};
exports.fillConstruccionmaterial = function fillConstruccionmaterial(rows){
	var Construccionmaterial = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Construccionmaterial.push(new prop.construccionmaterial(
                        rows[0][i].idCasaServicios,
                        rows[0][i].Construccion_idConstruccion,
                        rows[0][i].Pared_idPared,
                        rows[0][i].Aislamiento_idAislamiento,
                        rows[0][i].Piso_idPiso,
                        rows[0][i].Cerramiento_idCerramiento,
                        rows[0][i].Techo_idTecho,
                        rows[0][i].Calefaccion_idCalefaccion,
                        rows[0][i].Pintura_idPintura,
                        rows[0][i].Refrigeracion_idRefrigeracion,
                        rows[0][i].Chimenea_idChimenea));
	}

	return Construccionmaterial; 
}
exports.readCritica = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_critica_SelectAll()', callback);
	connection.end();
};
exports.fillCritica = function fillCritica(rows){
	var Critica = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Critica.push(new prop.critica(
                        rows[0][i].idCritica,
                        rows[0][i].Usuario_idUsuario));
	}

	return Critica; 
}
exports.readEstimacion = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_estimacion_SelectAll()', callback);
	connection.end();
};
exports.fillEstimacion = function fillEstimacion(rows){
	var Estimacion = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Estimacion.push(new prop.estimacion(
                        rows[0][i].idEstimacion,
                        rows[0][i].Casa_idCasa,
                        rows[0][i].PrecioConstruccion,
                        rows[0][i].PrecioTerreno,
                        rows[0][i].PrecioTotal));
	}

	return Estimacion; 
}
exports.readPared = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_pared_SelectAll()', callback);
	connection.end();
};
exports.fillPared = function fillPared(rows){
	var Pared = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Pared.push(new prop.pared(
                        rows[0][i].idPared,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Pared; 
}
exports.readPintura = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_pintura_SelectAll()', callback);
	connection.end();
};
exports.fillPintura = function fillPintura(rows){
	var Pintura = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Pintura.push(new prop.pintura(
                        rows[0][i].idPintura,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Pintura; 
}
exports.readPiso = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_piso_SelectAll()', callback);
	connection.end();
};
exports.fillPiso = function fillPiso(rows){
	var Piso = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Piso.push(new prop.piso(
                        rows[0][i].idPiso,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Piso; 
}
exports.readRefrigeracion = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_refrigeracion_SelectAll()', callback);
	connection.end();
};
exports.fillRefrigeracion = function fillRefrigeracion(rows){
	var Refrigeracion = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Refrigeracion.push(new prop.refrigeracion(
                        rows[0][i].idRefrigeracion,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Refrigeracion; 
}
exports.readServicio = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_servicio_SelectAll()', callback);
	connection.end();
};
exports.fillServicio = function fillServicio(rows){
	var Servicio = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Servicio.push(new prop.servicio(
                        rows[0][i].idServicio,
                        rows[0][i].Ubicacion_idUbicacion,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Tipo));
	}

	return Servicio; 
}
exports.readTecho = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_techo_SelectAll()', callback);
	connection.end();
};
exports.fillTecho = function fillTecho(rows){
	var Techo = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Techo.push(new prop.techo(
                        rows[0][i].idTecho,
                        rows[0][i].Nombre,
                        rows[0][i].Descripcion,
                        rows[0][i].Precio));
	}

	return Techo; 
}
exports.readTerreno = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_terreno_SelectAll()', callback);
	connection.end();
};
exports.fillTerreno = function fillTerreno(rows){
	var Terreno = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Terreno.push(new prop.terreno(
                        rows[0][i].idTerreno,
                        rows[0][i].Metros,
                        rows[0][i].LinderoN,
                        rows[0][i].LinderoS,
                        rows[0][i].LinderoE,
                        rows[0][i].LinderoO));
	}

	return Terreno; 
}
exports.readUbicacion = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_ubicacion_SelectAll()', callback);
	connection.end();
};
exports.fillUbicacion = function fillUbicacion(rows){
	var Ubicacion = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Ubicacion.push(new prop.ubicacion(
                        rows[0][i].idUbicacion,
                        rows[0][i].Latitud,
                        rows[0][i].Longitud));
	}

	return Ubicacion; 
}
exports.readUsuario = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_usuario_SelectAll()', callback);
	connection.end();
};
exports.fillUsuario = function fillUsuario(rows){
	var Usuario = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Usuario.push(new prop.usuario(
                        rows[0][i].idUsuario,
                        rows[0][i].Nombre,
                        rows[0][i].Contraseña,
                        rows[0][i].Tipo));
	}

	return Usuario; 
}
exports.readUsuariocasas = function(callback){
	var connection = mysql.createConnection(sqlParam);
	connection.connect();
	connection.query('call SP_usuariocasas_SelectAll()', callback);
	connection.end();
};
exports.fillUsuariocasas = function fillUsuariocasas(rows){
	var Usuariocasas = new Array();

	for(var i = 0; i < rows[0].length; i++ ){
		Usuariocasas.push(new prop.usuariocasas(
                        rows[0][i].idUsuarioCasas,
                        rows[0][i].Usuario_idUsuario,
                        rows[0][i].Casa_idCasa));
	}

	return Usuariocasas; 
}
