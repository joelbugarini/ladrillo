var Usuario = (function () {
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
})();

/*
var usuario = new Usuario(1, "joel", "rare", 2);
usuario.greet();
*/


/*
-Agregar conexion a DB
-Hacer Stored Procedures
-Hacer Clase DAC
-Arreglar problema de diseño de la DB AutoIncrement
-Hacer Clases Properties
-Agregar Datos de Ubicacion
-Posicionar ubicacion con marcador en Map
*/
