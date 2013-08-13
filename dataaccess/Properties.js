
/*------------------------ Properties -------------------*/

exports.agente = (function () {
    function agente(IdAgente, Usuario_idUsuario,Nombre,Descripcion,Direccion,Telefonos,Especialista,Contribuciones,Fecha) {
        if(IsNumber(IdAgente)) this.IdAgente = IdAgente;
        this.Usuario_idUsuario = Usuario_idUsuario;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Direccion = Direccion;
        this.Telefonos = Telefonos;
        this.Especialista = Especialista;
        this.Contribuciones = Contribuciones;
        this.Fecha = Fecha;
        }; return agente;
})();

exports.agentecriticas = (function () {
    function agentecriticas(IdAgenteCriticas,Agente_idAgente,Critica_idCritica) {
        this.IdAgenteCriticas = IdAgenteCriticas;
        this.Agente_idAgente = Agente_idAgente;
        this.Critica_idCritica = Critica_idCritica;
        }; return agentecriticas;
})();

exports.aislamiento = (function () {
    function aislamiento(IdAislamiento,Nombre,Descripcion,Precio) {
        this.IdAislamiento = IdAislamiento;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return aislamiento;
})();

exports.calefaccion = (function () {
    function calefaccion(IdCalefaccion,Nombre,Descripcion,Precio) {
        this.IdCalefaccion = IdCalefaccion;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return calefaccion;
})();

exports.casa = (function () {
    function casa(IdCasa,Ubicacion_idUbicacion,Construccion_idConstruccion,Terreno_idTerreno) {
        this.IdCasa = IdCasa;
        this.Ubicacion_idUbicacion = Ubicacion_idUbicacion;
        this.Construccion_idConstruccion = Construccion_idConstruccion;
        this.Terreno_idTerreno = Terreno_idTerreno;
        }; return casa;
})();

exports.casaservicios = (function () {
    function casaservicios(IdCasaServicios,Casa_idCasa,Servicio_idServicio,Distancia) {
        this.IdCasaServicios = IdCasaServicios;
        this.Casa_idCasa = Casa_idCasa;
        this.Servicio_idServicio = Servicio_idServicio;
        this.Distancia = Distancia;
        }; return casaservicios;
})();

exports.cerramiento = (function () {
    function cerramiento(IdCerramiento,Nombre,Descripcion,Precio) {
        this.IdCerramiento = IdCerramiento;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return cerramiento;
})();

exports.chimenea = (function () {
    function chimenea(IdChimenea,Nombre,Descripcion,Precio) {
        this.IdChimenea = IdChimenea;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return chimenea;
})();

exports.construccion = (function () {
    function construccion(IdConstruccion,Metros,Cuarto,Baño,Estacionamiento,Cocina,Sala,Plantas) {
        this.IdConstruccion = IdConstruccion;
        this.Metros = Metros;
        this.Cuarto = Cuarto;
        this.Baño = Baño;
        this.Estacionamiento = Estacionamiento;
        this.Cocina = Cocina;
        this.Sala = Sala;
        this.Plantas = Plantas;
        }; return construccion;
})();

exports.construccionmaterial = (function () {
    function construccionmaterial(IdConstruccionMaterial,Construccion_idConstruccion,Pared_idPared,Aislamiento_idAislamiento,Piso_idPiso,Cerramiento_idCerramiento,Techo_idTecho,Calefaccion_idCalefaccion,Pintura_idPintura,Refrigeracion_idRefrigeracion,Chimenea_idChimenea) {
        this.IdConstruccionMaterial = IdConstruccionMaterial;
        this.Construccion_idConstruccion = Construccion_idConstruccion;
        this.Pared_idPared = Pared_idPared;
        this.Aislamiento_idAislamiento = Aislamiento_idAislamiento;
        this.Piso_idPiso = Piso_idPiso;
        this.Cerramiento_idCerramiento = Cerramiento_idCerramiento;
        this.Techo_idTecho = Techo_idTecho;
        this.Calefaccion_idCalefaccion = Calefaccion_idCalefaccion;
        this.Pintura_idPintura = Pintura_idPintura;
        this.Refrigeracion_idRefrigeracion = Refrigeracion_idRefrigeracion;
        this.Chimenea_idChimenea = Chimenea_idChimenea;
        }; return construccionmaterial;
})();

exports.critica = (function () {
    function critica(IdCritica,Usuario_idUsuario) {
        this.IdCritica = IdCritica;
        this.Usuario_idUsuario = Usuario_idUsuario;
        }; return critica;
})();

exports.estimacion = (function () {
    function estimacion(IdEstimacion,Casa_idCasa,PrecioConstruccion,PrecioTerreno,PrecioTotal) {
        this.IdEstimacion = IdEstimacion;
        this.Casa_idCasa = Casa_idCasa;
        this.PrecioConstruccion = PrecioConstruccion;
        this.PrecioTerreno = PrecioTerreno;
        this.PrecioTotal = PrecioTotal;
        }; return estimacion;
})();

exports.pared = (function () {
    function pared(IdPared,Nombre,Descripcion,Precio) {
        this.IdPared = IdPared;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return pared;
})();

exports.pintura = (function () {
    function pintura(IdPintura,Nombre,Descripcion,Precio) {
        this.IdPintura = IdPintura;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return pintura;
})();

exports.piso = (function () {
    function piso(IdPiso,Nombre,Descripcion,Precio) {
        this.IdPiso = IdPiso;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return piso;
})();

exports.refrigeracion = (function () {
    function refrigeracion(IdRefrigeracion,Nombre,Descripcion,Precio) {
        this.IdRefrigeracion = IdRefrigeracion;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return refrigeracion;
})();

exports.servicio = (function () {
    function servicio(IdServicio,Ubicacion_idUbicacion,Nombre,Descripcion,Tipo) {
        this.IdServicio = IdServicio;
        this.Ubicacion_idUbicacion = Ubicacion_idUbicacion;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Tipo = Tipo;
        }; return servicio;
})();

exports.techo = (function () {
    function techo(IdTecho,Nombre,Descripcion,Precio) {
        this.IdTecho = IdTecho;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        }; return techo;
})();

exports.terreno = (function () {
    function terreno(IdTerreno,Metros,LinderoN,LinderoS,LinderoE,LinderoO) {
        this.IdTerreno = IdTerreno;
        this.Metros = Metros;
        this.LinderoN = LinderoN;
        this.LinderoS = LinderoS;
        this.LinderoE = LinderoE;
        this.LinderoO = LinderoO;
        }; return terreno;
})();

exports.ubicacion = (function () {
    function ubicacion(IdUbicacion,Latitud,Longitud) {
        this.IdUbicacion = IdUbicacion;
        this.Latitud = Latitud;
        this.Longitud = Longitud;
        }; return ubicacion;
})();

exports.usuario = (function () {
    function usuario(IdUsuario, Nombre,Contraseña,Tipo) {
        this.IdUsuario = IdUsuario;
        this.Nombre = Nombre;
        this.Contraseña = Contraseña;
        this.Tipo = Tipo;
        }; return usuario;
})();

exports.usuariocasas = (function () {
    function usuariocasas(IdUsuarioCasas,Usuario_idUsuario,Casa_idCasa) {
        this.IdUsuarioCasas = IdUsuarioCasas;
        this.Usuario_idUsuario = Usuario_idUsuario;
        this.Casa_idCasa = Casa_idCasa;
        }; return usuariocasas;
})();
      
            

/*
var usuario = new Usuario(1, "joel", "rare", 2);
*/


