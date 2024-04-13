/* -------------------------------------------------------------------------- */
/*  Script creado con fines didácticos. Adecuar para caso real de producción  */
/* -------------------------------------------------------------------------- */

-- Ubicarnos en master y crear la base de datos DBIDENTIDAD.
-- Configuración por defecto, simple
USE master
GO

CREATE DATABASE DBIDENTIDAD
GO

-- Crear el login en el servidor
CREATE LOGIN LgnTemporal
WITH PASSWORD       = 'P@ssw0rd1234',
DEFAULT_DATABASE    = DBIDENTIDAD,
CHECK_EXPIRATION    = OFF,
CHECK_POLICY        = OFF
GO

-- Ubicarnos en la base de datos DBIDENTIDAD
USE DBIDENTIDAD
GO

-- Crear el usuario en la base de datos
CREATE USER UsrTemporal
FOR LOGIN LgnTemporal
WITH DEFAULT_SCHEMA = dbo;
GO

-- Darle permisos al usuario a los objetos de esta base de datos DBIDENTIDAD
EXEC sp_addrolemember 'db_datareader', 'UsrTemporal';
EXEC sp_addrolemember 'db_datawriter', 'UsrTemporal';
GO