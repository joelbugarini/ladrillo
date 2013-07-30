/*---------------------Propertie Usuario con metodo ejemplo
exports.Usuario = (function () {
    function Usuario(IdUsuario, nombre, contraseña, tipo) {
        this.idUsuario = IdUsuario;
        this.Nombre = nombre;
        this.Contraseña = contraseña;
        this.Tipo = tipo;
    }
    Usuario.prototype.greet = function () {
        return "Hello, " + this.Nombre;
    };
    return Usuario;
})();*/

/*------------------------ Properties -------------------*/

exports.agente = (function () {
    function agente(Usuario_idUsuario,Nombre,Descripcion,Direccion,Telefonos,Especialista,Contribuciones,Fecha) {
        this.Usuario_idUsuario = Usuario_idUsuario;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Direccion = Direccion;
        this.Telefonos = Telefonos;
        this.Especialista = Especialista;
        this.Contribuciones = Contribuciones;
        this.Fecha = Fecha;
        return agente;
})();

exports.agentecriticas = (function () {
    function agentecriticas(Agente_idAgente,Critica_idCritica) {
        this.Agente_idAgente = Agente_idAgente;
        this.Critica_idCritica = Critica_idCritica;
        return agentecriticas;
})();

exports.aislamiento = (function () {
    function aislamiento(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return aislamiento;
})();

exports.calefaccion = (function () {
    function calefaccion(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return calefaccion;
})();

exports.casa = (function () {
    function casa(Ubicacion_idUbicacion,Construccion_idConstruccion,Terreno_idTerreno) {
        this.Ubicacion_idUbicacion = Ubicacion_idUbicacion;
        this.Construccion_idConstruccion = Construccion_idConstruccion;
        this.Terreno_idTerreno = Terreno_idTerreno;
        return casa;
})();

exports.casaservicios = (function () {
    function casaservicios(Casa_idCasa,Servicio_idServicio,Distancia) {
        this.Casa_idCasa = Casa_idCasa;
        this.Servicio_idServicio = Servicio_idServicio;
        this.Distancia = Distancia;
        return casaservicios;
})();

exports.cerramiento = (function () {
    function cerramiento(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return cerramiento;
})();

exports.chimenea = (function () {
    function chimenea(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return chimenea;
})();

exports.construccion = (function () {
    function construccion(Metros,Cuarto,Baño,Estacionamiento,Cocina,Sala,Plantas) {
        this.Metros = Metros;
        this.Cuarto = Cuarto;
        this.Baño = Baño;
        this.Estacionamiento = Estacionamiento;
        this.Cocina = Cocina;
        this.Sala = Sala;
        this.Plantas = Plantas;
        return construccion;
})();

exports.construccionmaterial = (function () {
    function construccionmaterial(Construccion_idConstruccion,Pared_idPared,Aislamiento_idAislamiento,Piso_idPiso,Cerramiento_idCerramiento,Techo_idTecho,Calefaccion_idCalefaccion,Pintura_idPintura,Refrigeracion_idRefrigeracion,Chimenea_idChimenea) {
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
        return construccionmaterial;
})();

exports.critica = (function () {
    function critica(Usuario_idUsuario) {
        this.Usuario_idUsuario = Usuario_idUsuario;
        return critica;
})();

exports.estimacion = (function () {
    function estimacion(Casa_idCasa,PrecioConstruccion,PrecioTerreno,PrecioTotal) {
        this.Casa_idCasa = Casa_idCasa;
        this.PrecioConstruccion = PrecioConstruccion;
        this.PrecioTerreno = PrecioTerreno;
        this.PrecioTotal = PrecioTotal;
        return estimacion;
})();

exports.pared = (function () {
    function pared(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return pared;
})();

exports.pintura = (function () {
    function pintura(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return pintura;
})();

exports.piso = (function () {
    function piso(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return piso;
})();

exports.refrigeracion = (function () {
    function refrigeracion(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return refrigeracion;
})();

exports.servicio = (function () {
    function servicio(Ubicacion_idUbicacion,Nombre,Descripcion,Tipo) {
        this.Ubicacion_idUbicacion = Ubicacion_idUbicacion;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Tipo = Tipo;
        return servicio;
})();

exports.techo = (function () {
    function techo(Nombre,Descripcion,Precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        return techo;
})();

exports.terreno = (function () {
    function terreno(Metros,LinderoN,LinderoS,LinderoE,LinderoO) {
        this.Metros = Metros;
        this.LinderoN = LinderoN;
        this.LinderoS = LinderoS;
        this.LinderoE = LinderoE;
        this.LinderoO = LinderoO;
        return terreno;
})();

exports.ubicacion = (function () {
    function ubicacion(Latitud,Longitud) {
        this.Latitud = Latitud;
        this.Longitud = Longitud;
        return ubicacion;
})();

exports.usuario = (function () {
    function usuario(Nombre,Contraseña,Tipo) {
        this.Nombre = Nombre;
        this.Contraseña = Contraseña;
        this.Tipo = Tipo;
        return usuario;
})();

exports.usuariocasas = (function () {
    function usuariocasas(Usuario_idUsuario,Casa_idCasa) {
        this.Usuario_idUsuario = Usuario_idUsuario;
        this.Casa_idCasa = Casa_idCasa;
        return usuariocasas;
})();}
            }
            

/*
var usuario = new Usuario(1, "joel", "rare", 2);
usuario.greet();
*/


/*
-Agregar conexion a DB
***Hacer Stored Procedures
-Hacer Clase DAC
***Arreglar problema de diseño de la DB AutoIncrement
***Hacer Clases Properties
-Agregar Datos de Ubicacion
-Posicionar ubicacion con marcador en Map
*/
