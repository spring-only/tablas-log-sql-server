/* -------------------------------------------------------------------------- */
/*  Script creado con fines didácticos. Adecuar para caso real de producción  */
/* -------------------------------------------------------------------------- */

-- Ubicarnos en la base de datos master
USE master
GO

-- Preparar la base de datos para que pueda ser eliminada.
ALTER DATABASE DBIDENTIDAD SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

-- Ubicarnos en la base de datos DBIDENTIDAD
USE DBIDENTIDAD
GO

-- Borrar el usuario
DROP USER UsrTemporal
GO

-- Ubicarnos en la base de datos master
USE master
GO

-- Borrar el login
DROP LOGIN LgnTemporal
GO

-- Borrar la base de datos DBIDENTIDAD
DROP DATABASE DBIDENTIDAD
GO