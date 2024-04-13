/* -------------------------------------------------------------------------- */
/*  Script creado con fines didácticos. Adecuar para caso real de producción  */
/* -------------------------------------------------------------------------- */

-- Ubicarnos en la base de datos
USE DBIDENTIDAD
GO
  
-- Insertar y actualizar
INSERT INTO persona (nombres, apellidos, lugar_nacimiento, estado_civil, fecha_modificacion) VALUES('Yasmin', 'Zamora Santana', 'San Juan', 'Soltero', '2000-01-01');

UPDATE persona SET estado_civil = 'Casado',                             fecha_modificacion = '2021-04-19' WHERE id =  1;

UPDATE persona SET nombres = 'Yazmín', lugar_nacimiento = 'San Pedro',  fecha_modificacion = '2022-07-30' WHERE id =  1;

UPDATE persona SET estado_civil = 'Divorciado',                         fecha_modificacion = '2023-09-09' WHERE id =  1;

DELETE persona WHERE id =  1;