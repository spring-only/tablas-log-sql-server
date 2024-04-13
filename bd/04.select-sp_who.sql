/* -------------------------------------------------------------------------- */
/*  Script creado con fines didácticos. Adecuar para caso real de producción  */
/* -------------------------------------------------------------------------- */

-- Ubicarnos en la base de datos
USE DBIDENTIDAD
GO

-- Queries para mostrar la data
SELECT * FROM persona ORDER BY id, fecha_modificacion;
SELECT * FROM persona_log ORDER BY fecha_ocurrencia;
GO

-- Stored procedure para ver los usuarios loggeados al servidor
EXEC sp_who2
GO