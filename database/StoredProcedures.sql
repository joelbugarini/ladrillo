/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agente_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    agente 
  WHERE idAgente = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agente_Insert (
  IN Usuario_idUsuario int,
IN Nombre varchar (60),
IN Descripcion varchar (150),
IN Direccion varchar (80),
IN Telefonos varchar (60),
IN Especialista varchar (45),
IN Contribuciones int,
IN Fecha datetime

) 
BEGIN
  INSERT INTO agente (Usuario_idUsuario,
Nombre,
Descripcion,
Direccion,
Telefonos,
Especialista,
Contribuciones,
Fecha
) 
  VALUES
    (
      usuario_idUsuario,
nombre,
descripcion,
direccion,
telefonos,
especialista,
contribuciones,
fecha

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_agente_Update (
   IN _id INT,
  IN Usuario_idUsuario int,
IN Nombre varchar (60),
IN Descripcion varchar (150),
IN Direccion varchar (80),
IN Telefonos varchar (60),
IN Especialista varchar (45),
IN Contribuciones int,
IN Fecha datetime

) 
BEGIN
  UPDATE 
    agente 
  SET
   Usuario_idUsuario = usuario_idUsuario,
Nombre = nombre,
Descripcion = descripcion,
Direccion = direccion,
Telefonos = telefonos,
Especialista = especialista,
Contribuciones = contribuciones,
Fecha = fecha

  WHERE idAgente = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agente_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    agente ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agente_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    agente 
  WHERE idAgente = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agente_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM agente 
 WHERE idAgente >= idFrom AND idAgente <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agente_SelectLast () 
BEGIN
 
 SELECT * FROM agente  ORDER BY idAgente DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_agente_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idAgente,
      Usuario_idUsuario,
Nombre,
Descripcion,
Direccion,
Telefonos,
Especialista,
Contribuciones,
Fecha

      
  FROM
	(SELECT 
	      RowRank,
           idAgente,
	      Usuario_idUsuario,
Nombre,
Descripcion,
Direccion,
Telefonos,
Especialista,
Contribuciones,
Fecha

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		agente t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_agente_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM agente;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agentecriticas_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    agentecriticas 
  WHERE idAgenteCriticas = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agentecriticas_Insert (
  IN Agente_idAgente int,
IN Critica_idCritica int

) 
BEGIN
  INSERT INTO agentecriticas (Agente_idAgente,
Critica_idCritica
) 
  VALUES
    (
      agente_idAgente,
critica_idCritica

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_agentecriticas_Update (
   IN _id INT,
  IN Agente_idAgente int,
IN Critica_idCritica int

) 
BEGIN
  UPDATE 
    agentecriticas 
  SET
   Agente_idAgente = agente_idAgente,
Critica_idCritica = critica_idCritica

  WHERE idAgenteCriticas = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agentecriticas_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    agentecriticas ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agentecriticas_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    agentecriticas 
  WHERE idAgenteCriticas = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agentecriticas_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM agentecriticas 
 WHERE idAgenteCriticas >= idFrom AND idAgenteCriticas <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_agentecriticas_SelectLast () 
BEGIN
 
 SELECT * FROM agentecriticas  ORDER BY idAgenteCriticas DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_agentecriticas_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idAgenteCriticas,
      Agente_idAgente,
Critica_idCritica

      
  FROM
	(SELECT 
	      RowRank,
           idAgenteCriticas,
	      Agente_idAgente,
Critica_idCritica

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		agentecriticas t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_agentecriticas_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM agentecriticas;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_aislamiento_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    aislamiento 
  WHERE idAislamiento = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_aislamiento_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO aislamiento (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_aislamiento_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    aislamiento 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idAislamiento = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_aislamiento_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    aislamiento ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_aislamiento_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    aislamiento 
  WHERE idAislamiento = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_aislamiento_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM aislamiento 
 WHERE idAislamiento >= idFrom AND idAislamiento <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_aislamiento_SelectLast () 
BEGIN
 
 SELECT * FROM aislamiento  ORDER BY idAislamiento DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_aislamiento_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idAislamiento,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idAislamiento,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		aislamiento t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_aislamiento_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM aislamiento;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_calefaccion_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    calefaccion 
  WHERE idCalefaccion = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_calefaccion_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO calefaccion (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_calefaccion_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    calefaccion 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idCalefaccion = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_calefaccion_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    calefaccion ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_calefaccion_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    calefaccion 
  WHERE idCalefaccion = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_calefaccion_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM calefaccion 
 WHERE idCalefaccion >= idFrom AND idCalefaccion <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_calefaccion_SelectLast () 
BEGIN
 
 SELECT * FROM calefaccion  ORDER BY idCalefaccion DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_calefaccion_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idCalefaccion,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idCalefaccion,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		calefaccion t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_calefaccion_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM calefaccion;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casa_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    casa 
  WHERE idCasa = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casa_Insert (
  IN Ubicacion_idUbicacion int,
IN Construccion_idConstruccion int,
IN Terreno_idTerreno int

) 
BEGIN
  INSERT INTO casa (Ubicacion_idUbicacion,
Construccion_idConstruccion,
Terreno_idTerreno
) 
  VALUES
    (
      ubicacion_idUbicacion,
construccion_idConstruccion,
terreno_idTerreno

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_casa_Update (
   IN _id INT,
  IN Ubicacion_idUbicacion int,
IN Construccion_idConstruccion int,
IN Terreno_idTerreno int

) 
BEGIN
  UPDATE 
    casa 
  SET
   Ubicacion_idUbicacion = ubicacion_idUbicacion,
Construccion_idConstruccion = construccion_idConstruccion,
Terreno_idTerreno = terreno_idTerreno

  WHERE idCasa = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casa_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    casa ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casa_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    casa 
  WHERE idCasa = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casa_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM casa 
 WHERE idCasa >= idFrom AND idCasa <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casa_SelectLast () 
BEGIN
 
 SELECT * FROM casa  ORDER BY idCasa DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_casa_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idCasa,
      Ubicacion_idUbicacion,
Construccion_idConstruccion,
Terreno_idTerreno

      
  FROM
	(SELECT 
	      RowRank,
           idCasa,
	      Ubicacion_idUbicacion,
Construccion_idConstruccion,
Terreno_idTerreno

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		casa t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_casa_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM casa;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casaservicios_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    casaservicios 
  WHERE idCasaServicios = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casaservicios_Insert (
  IN Casa_idCasa int,
IN Servicio_idServicio int,
IN Distancia float

) 
BEGIN
  INSERT INTO casaservicios (Casa_idCasa,
Servicio_idServicio,
Distancia
) 
  VALUES
    (
      casa_idCasa,
servicio_idServicio,
distancia

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_casaservicios_Update (
   IN _id INT,
  IN Casa_idCasa int,
IN Servicio_idServicio int,
IN Distancia float

) 
BEGIN
  UPDATE 
    casaservicios 
  SET
   Casa_idCasa = casa_idCasa,
Servicio_idServicio = servicio_idServicio,
Distancia = distancia

  WHERE idCasaServicios = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casaservicios_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    casaservicios ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casaservicios_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    casaservicios 
  WHERE idCasaServicios = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casaservicios_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM casaservicios 
 WHERE idCasaServicios >= idFrom AND idCasaServicios <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_casaservicios_SelectLast () 
BEGIN
 
 SELECT * FROM casaservicios  ORDER BY idCasaServicios DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_casaservicios_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idCasaServicios,
      Casa_idCasa,
Servicio_idServicio,
Distancia

      
  FROM
	(SELECT 
	      RowRank,
           idCasaServicios,
	      Casa_idCasa,
Servicio_idServicio,
Distancia

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		casaservicios t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_casaservicios_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM casaservicios;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_cerramiento_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    cerramiento 
  WHERE idCerramiento = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_cerramiento_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO cerramiento (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_cerramiento_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    cerramiento 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idCerramiento = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_cerramiento_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    cerramiento ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_cerramiento_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    cerramiento 
  WHERE idCerramiento = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_cerramiento_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM cerramiento 
 WHERE idCerramiento >= idFrom AND idCerramiento <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_cerramiento_SelectLast () 
BEGIN
 
 SELECT * FROM cerramiento  ORDER BY idCerramiento DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_cerramiento_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idCerramiento,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idCerramiento,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		cerramiento t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_cerramiento_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM cerramiento;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_chimenea_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    chimenea 
  WHERE idChimenea = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_chimenea_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO chimenea (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_chimenea_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    chimenea 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idChimenea = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_chimenea_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    chimenea ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_chimenea_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    chimenea 
  WHERE idChimenea = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_chimenea_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM chimenea 
 WHERE idChimenea >= idFrom AND idChimenea <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_chimenea_SelectLast () 
BEGIN
 
 SELECT * FROM chimenea  ORDER BY idChimenea DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_chimenea_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idChimenea,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idChimenea,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		chimenea t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_chimenea_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM chimenea;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccion_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    construccion 
  WHERE idConstruccion = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccion_Insert (
  IN Metros float,
IN Cuarto int,
IN Baño decimal,
IN Estacionamiento int,
IN Cocina int,
IN Sala int,
IN Plantas int

) 
BEGIN
  INSERT INTO construccion (Metros,
Cuarto,
Baño,
Estacionamiento,
Cocina,
Sala,
Plantas
) 
  VALUES
    (
      metros,
cuarto,
baño,
estacionamiento,
cocina,
sala,
plantas

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_construccion_Update (
   IN _id INT,
  IN Metros float,
IN Cuarto int,
IN Baño decimal,
IN Estacionamiento int,
IN Cocina int,
IN Sala int,
IN Plantas int

) 
BEGIN
  UPDATE 
    construccion 
  SET
   Metros = metros,
Cuarto = cuarto,
Baño = baño,
Estacionamiento = estacionamiento,
Cocina = cocina,
Sala = sala,
Plantas = plantas

  WHERE idConstruccion = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccion_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    construccion ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccion_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    construccion 
  WHERE idConstruccion = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccion_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM construccion 
 WHERE idConstruccion >= idFrom AND idConstruccion <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccion_SelectLast () 
BEGIN
 
 SELECT * FROM construccion  ORDER BY idConstruccion DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_construccion_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idConstruccion,
      Metros,
Cuarto,
Baño,
Estacionamiento,
Cocina,
Sala,
Plantas

      
  FROM
	(SELECT 
	      RowRank,
           idConstruccion,
	      Metros,
Cuarto,
Baño,
Estacionamiento,
Cocina,
Sala,
Plantas

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		construccion t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_construccion_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM construccion;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    construccionmaterial 
  WHERE idCasaServicios = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_Insert (
  IN Construccion_idConstruccion int,
IN Pared_idPared int,
IN Aislamiento_idAislamiento int,
IN Piso_idPiso int,
IN Cerramiento_idCerramiento int,
IN Techo_idTecho int,
IN Calefaccion_idCalefaccion int,
IN Pintura_idPintura int,
IN Refrigeracion_idRefrigeracion int,
IN Chimenea_idChimenea int

) 
BEGIN
  INSERT INTO construccionmaterial (Construccion_idConstruccion,
Pared_idPared,
Aislamiento_idAislamiento,
Piso_idPiso,
Cerramiento_idCerramiento,
Techo_idTecho,
Calefaccion_idCalefaccion,
Pintura_idPintura,
Refrigeracion_idRefrigeracion,
Chimenea_idChimenea
) 
  VALUES
    (
      construccion_idConstruccion,
pared_idPared,
aislamiento_idAislamiento,
piso_idPiso,
cerramiento_idCerramiento,
techo_idTecho,
calefaccion_idCalefaccion,
pintura_idPintura,
refrigeracion_idRefrigeracion,
chimenea_idChimenea

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_construccionmaterial_Update (
   IN _id INT,
  IN Construccion_idConstruccion int,
IN Pared_idPared int,
IN Aislamiento_idAislamiento int,
IN Piso_idPiso int,
IN Cerramiento_idCerramiento int,
IN Techo_idTecho int,
IN Calefaccion_idCalefaccion int,
IN Pintura_idPintura int,
IN Refrigeracion_idRefrigeracion int,
IN Chimenea_idChimenea int

) 
BEGIN
  UPDATE 
    construccionmaterial 
  SET
   Construccion_idConstruccion = construccion_idConstruccion,
Pared_idPared = pared_idPared,
Aislamiento_idAislamiento = aislamiento_idAislamiento,
Piso_idPiso = piso_idPiso,
Cerramiento_idCerramiento = cerramiento_idCerramiento,
Techo_idTecho = techo_idTecho,
Calefaccion_idCalefaccion = calefaccion_idCalefaccion,
Pintura_idPintura = pintura_idPintura,
Refrigeracion_idRefrigeracion = refrigeracion_idRefrigeracion,
Chimenea_idChimenea = chimenea_idChimenea

  WHERE idCasaServicios = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    construccionmaterial ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    construccionmaterial 
  WHERE idCasaServicios = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM construccionmaterial 
 WHERE idCasaServicios >= idFrom AND idCasaServicios <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_SelectLast () 
BEGIN
 
 SELECT * FROM construccionmaterial  ORDER BY idCasaServicios DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_construccionmaterial_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idCasaServicios,
      Construccion_idConstruccion,
Pared_idPared,
Aislamiento_idAislamiento,
Piso_idPiso,
Cerramiento_idCerramiento,
Techo_idTecho,
Calefaccion_idCalefaccion,
Pintura_idPintura,
Refrigeracion_idRefrigeracion,
Chimenea_idChimenea

      
  FROM
	(SELECT 
	      RowRank,
           idCasaServicios,
	      Construccion_idConstruccion,
Pared_idPared,
Aislamiento_idAislamiento,
Piso_idPiso,
Cerramiento_idCerramiento,
Techo_idTecho,
Calefaccion_idCalefaccion,
Pintura_idPintura,
Refrigeracion_idRefrigeracion,
Chimenea_idChimenea

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		construccionmaterial t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_construccionmaterial_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM construccionmaterial;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_critica_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    critica 
  WHERE idCritica = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_critica_Insert (
  IN Usuario_idUsuario int

) 
BEGIN
  INSERT INTO critica (Usuario_idUsuario
) 
  VALUES
    (
      usuario_idUsuario

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_critica_Update (
   IN _id INT,
  IN Usuario_idUsuario int

) 
BEGIN
  UPDATE 
    critica 
  SET
   Usuario_idUsuario = usuario_idUsuario

  WHERE idCritica = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_critica_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    critica ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_critica_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    critica 
  WHERE idCritica = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_critica_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM critica 
 WHERE idCritica >= idFrom AND idCritica <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_critica_SelectLast () 
BEGIN
 
 SELECT * FROM critica  ORDER BY idCritica DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_critica_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idCritica,
      Usuario_idUsuario

      
  FROM
	(SELECT 
	      RowRank,
           idCritica,
	      Usuario_idUsuario

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		critica t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_critica_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM critica;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_estimacion_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    estimacion 
  WHERE idEstimacion = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_estimacion_Insert (
  IN Casa_idCasa int,
IN PrecioConstruccion decimal,
IN PrecioTerreno decimal,
IN PrecioTotal decimal

) 
BEGIN
  INSERT INTO estimacion (Casa_idCasa,
PrecioConstruccion,
PrecioTerreno,
PrecioTotal
) 
  VALUES
    (
      casa_idCasa,
precioConstruccion,
precioTerreno,
precioTotal

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_estimacion_Update (
   IN _id INT,
  IN Casa_idCasa int,
IN PrecioConstruccion decimal,
IN PrecioTerreno decimal,
IN PrecioTotal decimal

) 
BEGIN
  UPDATE 
    estimacion 
  SET
   Casa_idCasa = casa_idCasa,
PrecioConstruccion = precioConstruccion,
PrecioTerreno = precioTerreno,
PrecioTotal = precioTotal

  WHERE idEstimacion = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_estimacion_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    estimacion ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_estimacion_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    estimacion 
  WHERE idEstimacion = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_estimacion_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM estimacion 
 WHERE idEstimacion >= idFrom AND idEstimacion <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_estimacion_SelectLast () 
BEGIN
 
 SELECT * FROM estimacion  ORDER BY idEstimacion DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_estimacion_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idEstimacion,
      Casa_idCasa,
PrecioConstruccion,
PrecioTerreno,
PrecioTotal

      
  FROM
	(SELECT 
	      RowRank,
           idEstimacion,
	      Casa_idCasa,
PrecioConstruccion,
PrecioTerreno,
PrecioTotal

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		estimacion t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_estimacion_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM estimacion;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pared_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    pared 
  WHERE idPared = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pared_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO pared (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_pared_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    pared 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idPared = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pared_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    pared ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pared_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    pared 
  WHERE idPared = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pared_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM pared 
 WHERE idPared >= idFrom AND idPared <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pared_SelectLast () 
BEGIN
 
 SELECT * FROM pared  ORDER BY idPared DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_pared_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idPared,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idPared,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		pared t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_pared_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM pared;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pintura_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    pintura 
  WHERE idPintura = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pintura_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO pintura (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_pintura_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    pintura 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idPintura = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pintura_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    pintura ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pintura_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    pintura 
  WHERE idPintura = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pintura_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM pintura 
 WHERE idPintura >= idFrom AND idPintura <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_pintura_SelectLast () 
BEGIN
 
 SELECT * FROM pintura  ORDER BY idPintura DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_pintura_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idPintura,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idPintura,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		pintura t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_pintura_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM pintura;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_piso_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    piso 
  WHERE idPiso = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_piso_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO piso (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_piso_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    piso 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idPiso = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_piso_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    piso ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_piso_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    piso 
  WHERE idPiso = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_piso_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM piso 
 WHERE idPiso >= idFrom AND idPiso <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_piso_SelectLast () 
BEGIN
 
 SELECT * FROM piso  ORDER BY idPiso DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_piso_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idPiso,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idPiso,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		piso t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_piso_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM piso;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_refrigeracion_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    refrigeracion 
  WHERE idRefrigeracion = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_refrigeracion_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO refrigeracion (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_refrigeracion_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    refrigeracion 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idRefrigeracion = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_refrigeracion_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    refrigeracion ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_refrigeracion_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    refrigeracion 
  WHERE idRefrigeracion = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_refrigeracion_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM refrigeracion 
 WHERE idRefrigeracion >= idFrom AND idRefrigeracion <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_refrigeracion_SelectLast () 
BEGIN
 
 SELECT * FROM refrigeracion  ORDER BY idRefrigeracion DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_refrigeracion_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idRefrigeracion,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idRefrigeracion,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		refrigeracion t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_refrigeracion_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM refrigeracion;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_servicio_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    servicio 
  WHERE idServicio = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_servicio_Insert (
  IN Ubicacion_idUbicacion int,
IN Nombre varchar (45),
IN Descripcion varchar (150),
IN Tipo varchar (45)

) 
BEGIN
  INSERT INTO servicio (Ubicacion_idUbicacion,
Nombre,
Descripcion,
Tipo
) 
  VALUES
    (
      ubicacion_idUbicacion,
nombre,
descripcion,
tipo

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_servicio_Update (
   IN _id INT,
  IN Ubicacion_idUbicacion int,
IN Nombre varchar (45),
IN Descripcion varchar (150),
IN Tipo varchar (45)

) 
BEGIN
  UPDATE 
    servicio 
  SET
   Ubicacion_idUbicacion = ubicacion_idUbicacion,
Nombre = nombre,
Descripcion = descripcion,
Tipo = tipo

  WHERE idServicio = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_servicio_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    servicio ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_servicio_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    servicio 
  WHERE idServicio = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_servicio_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM servicio 
 WHERE idServicio >= idFrom AND idServicio <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_servicio_SelectLast () 
BEGIN
 
 SELECT * FROM servicio  ORDER BY idServicio DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_servicio_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idServicio,
      Ubicacion_idUbicacion,
Nombre,
Descripcion,
Tipo

      
  FROM
	(SELECT 
	      RowRank,
           idServicio,
	      Ubicacion_idUbicacion,
Nombre,
Descripcion,
Tipo

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		servicio t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_servicio_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM servicio;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_techo_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    techo 
  WHERE idTecho = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_techo_Insert (
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  INSERT INTO techo (Nombre,
Descripcion,
Precio
) 
  VALUES
    (
      nombre,
descripcion,
precio

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_techo_Update (
   IN _id INT,
  IN Nombre varchar (45),
IN Descripcion varchar (45),
IN Precio float

) 
BEGIN
  UPDATE 
    techo 
  SET
   Nombre = nombre,
Descripcion = descripcion,
Precio = precio

  WHERE idTecho = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_techo_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    techo ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_techo_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    techo 
  WHERE idTecho = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_techo_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM techo 
 WHERE idTecho >= idFrom AND idTecho <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_techo_SelectLast () 
BEGIN
 
 SELECT * FROM techo  ORDER BY idTecho DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_techo_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idTecho,
      Nombre,
Descripcion,
Precio

      
  FROM
	(SELECT 
	      RowRank,
           idTecho,
	      Nombre,
Descripcion,
Precio

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		techo t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_techo_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM techo;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_terreno_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    terreno 
  WHERE idTerreno = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_terreno_Insert (
  IN Metros float,
IN LinderoN varchar (45),
IN LinderoS varchar (45),
IN LinderoE varchar (45),
IN LinderoO varchar (45)

) 
BEGIN
  INSERT INTO terreno (Metros,
LinderoN,
LinderoS,
LinderoE,
LinderoO
) 
  VALUES
    (
      metros,
linderoN,
linderoS,
linderoE,
linderoO

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_terreno_Update (
   IN _id INT,
  IN Metros float,
IN LinderoN varchar (45),
IN LinderoS varchar (45),
IN LinderoE varchar (45),
IN LinderoO varchar (45)

) 
BEGIN
  UPDATE 
    terreno 
  SET
   Metros = metros,
LinderoN = linderoN,
LinderoS = linderoS,
LinderoE = linderoE,
LinderoO = linderoO

  WHERE idTerreno = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_terreno_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    terreno ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_terreno_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    terreno 
  WHERE idTerreno = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_terreno_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM terreno 
 WHERE idTerreno >= idFrom AND idTerreno <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_terreno_SelectLast () 
BEGIN
 
 SELECT * FROM terreno  ORDER BY idTerreno DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_terreno_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idTerreno,
      Metros,
LinderoN,
LinderoS,
LinderoE,
LinderoO

      
  FROM
	(SELECT 
	      RowRank,
           idTerreno,
	      Metros,
LinderoN,
LinderoS,
LinderoE,
LinderoO

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		terreno t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_terreno_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM terreno;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_ubicacion_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    ubicacion 
  WHERE idUbicacion = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_ubicacion_Insert (
  IN Latitud float,
IN Longitud float

) 
BEGIN
  INSERT INTO ubicacion (Latitud,
Longitud
) 
  VALUES
    (
      latitud,
longitud

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_ubicacion_Update (
   IN _id INT,
  IN Latitud float,
IN Longitud float

) 
BEGIN
  UPDATE 
    ubicacion 
  SET
   Latitud = latitud,
Longitud = longitud

  WHERE idUbicacion = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_ubicacion_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    ubicacion ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_ubicacion_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    ubicacion 
  WHERE idUbicacion = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_ubicacion_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM ubicacion 
 WHERE idUbicacion >= idFrom AND idUbicacion <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_ubicacion_SelectLast () 
BEGIN
 
 SELECT * FROM ubicacion  ORDER BY idUbicacion DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_ubicacion_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idUbicacion,
      Latitud,
Longitud

      
  FROM
	(SELECT 
	      RowRank,
           idUbicacion,
	      Latitud,
Longitud

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		ubicacion t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_ubicacion_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM ubicacion;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuario_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    usuario 
  WHERE idUsuario = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuario_Insert (
  IN Nombre varchar (60),
IN Contraseña varchar (45),
IN Tipo int

) 
BEGIN
  INSERT INTO usuario (Nombre,
Contraseña,
Tipo
) 
  VALUES
    (
      nombre,
contraseña,
tipo

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_usuario_Update (
   IN _id INT,
  IN Nombre varchar (60),
IN Contraseña varchar (45),
IN Tipo int

) 
BEGIN
  UPDATE 
    usuario 
  SET
   Nombre = nombre,
Contraseña = contraseña,
Tipo = tipo

  WHERE idUsuario = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuario_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    usuario ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuario_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    usuario 
  WHERE idUsuario = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuario_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM usuario 
 WHERE idUsuario >= idFrom AND idUsuario <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuario_SelectLast () 
BEGIN
 
 SELECT * FROM usuario  ORDER BY idUsuario DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_usuario_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idUsuario,
      Nombre,
Contraseña,
Tipo

      
  FROM
	(SELECT 
	      RowRank,
           idUsuario,
	      Nombre,
Contraseña,
Tipo

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		usuario t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_usuario_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM usuario;
 
END //
DELIMITER ;

/*-------------------------Delete Row-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuariocasas_DeleteRow (IN _id INT) 
BEGIN
  DELETE 
  FROM
    usuariocasas 
  WHERE idUsuarioCasas = _id ;
END //

DELIMITER ;
/*-------------------------Insert----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuariocasas_Insert (
  IN Usuario_idUsuario int,
IN Casa_idCasa int

) 
BEGIN
  INSERT INTO usuariocasas (Usuario_idUsuario,
Casa_idCasa
) 
  VALUES
    (
      usuario_idUsuario,
casa_idCasa

    ) ;
END //

DELIMITER ;
/*------------------------Update-----------------------------------------------*/
DELIMITER //
USE `ladrillo_db` //
CREATE PROCEDURE SP_usuariocasas_Update (
   IN _id INT,
  IN Usuario_idUsuario int,
IN Casa_idCasa int

) 
BEGIN
  UPDATE 
    usuariocasas 
  SET
   Usuario_idUsuario = usuario_idUsuario,
Casa_idCasa = casa_idCasa

  WHERE idUsuarioCasas = _id ;
END //

DELIMITER ;
/*-----------------------------SelectAll-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuariocasas_SelectAll () 
BEGIN
  SELECT 
    * 
  FROM
    usuariocasas ;
END //

DELIMITER ;
/*------------------------------SelectRow----------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuariocasas_SelectRow (IN _id INT) 
BEGIN
  SELECT 
    * 
  FROM
    usuariocasas 
  WHERE idUsuarioCasas = _id ;
END //

DELIMITER ;
/*----------------------------Section-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuariocasas_SelectSection (IN idFrom INT, IN idTo INT) 
BEGIN
 
 SELECT * FROM usuariocasas 
 WHERE idUsuarioCasas >= idFrom AND idUsuarioCasas <= idTo;

END //

DELIMITER ;
/*---------------------------Last-----------------------------------------------*/
DELIMITER //

CREATE PROCEDURE SP_usuariocasas_SelectLast () 
BEGIN
 
 SELECT * FROM usuariocasas  ORDER BY idUsuarioCasas DESC LIMIT 1;
 
END //
DELIMITER ;

/*------------------------------SelectPaged-------------------------------------------*/
DELIMITER //

CREATE PROCEDURE `SP_usuariocasas_SelectPaged`(IN startRowIndex INT, IN maximumRows INT)
BEGIN
SELECT 
      idUsuarioCasas,
      Usuario_idUsuario,
Casa_idCasa

      
  FROM
	(SELECT 
	      RowRank,
           idUsuarioCasas,
	      Usuario_idUsuario,
Casa_idCasa

	    FROM
	      /*--- This is the Row_Number Function ---*/
	      (SELECT @i := @i + 1 AS RowRank,t.* FROM
		usuariocasas t, (SELECT @i := 0) foo) AS tmp_table) AS TabRowRank
		  
		  
	WHERE RowRank > startRowIndex AND RowRank <= (startRowIndex + maximumRows);
	
END//

DELIMITER ;
/*-----------------------------Count--------------------------------------------*/

DELIMITER //

CREATE PROCEDURE SP_usuariocasas_Count () 
BEGIN
 
SELECT COUNT(*) AS Total FROM usuariocasas;
 
END //
DELIMITER ;

