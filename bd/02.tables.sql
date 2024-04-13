/* -------------------------------------------------------------------------- */
/*  Script creado con fines didácticos. Adecuar para caso real de producción  */
/* -------------------------------------------------------------------------- */

-- Ubicarnos en la base de datos DBIDENTIDAD
USE DBIDENTIDAD
GO

-- Crear la tabla principal
CREATE TABLE persona
(
    id                   INT NOT NULL IDENTITY,
    nombres              VARCHAR(128),
    apellidos            VARCHAR(128),
    lugar_nacimiento     VARCHAR(256),
    estado_civil         VARCHAR(16),
    fecha_modificacion   DATE
);
GO

-- Crear la tabla de log
CREATE TABLE persona_log
(
    -- campos de auditoría
    fecha_ocurrencia    DATETIME,
    aplicacion          NVARCHAR(128),
    servidor            NVARCHAR(128),
    sesion_id           NVARCHAR(32),
    user_id             INT,
    user_descripcion    SYSNAME,
    accion              VARCHAR(3),
    
    -- campos iguales que la tabla principal
    id                  INT,
    nombres             VARCHAR(128),
    apellidos           VARCHAR(128),
    lugar_nacimiento    VARCHAR(256),
    estado_civil        VARCHAR(16),
    fecha_modificacion  DATE
);
GO