/* -------------------------------------------------------------------------- */
/*  Script creado con fines didácticos. Adecuar para caso real de producción  */
/* -------------------------------------------------------------------------- */
-- Ubicarnos en la base de datos
USE DBIDENTIDAD
GO

-- Creare el trigger
CREATE TRIGGER trg_persona
ON  persona
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @action VARCHAR(3);

    IF NOT EXISTS(SELECT * FROM inserted)
        BEGIN
            -- El trigger se disparó por un DELETE
            SET @action = 'DEL';

            INSERT INTO persona_log
            SELECT  GETDATE(),
                    APP_NAME(),
                    HOST_NAME(),
                    @@SPID,
                    USER_ID(),
                    CURRENT_USER,
                    @action,
                    del.*
            FROM    deleted AS del;
        END
    ELSE
        BEGIN
            IF NOT EXISTS(SELECT * FROM deleted)
                -- El trigger se disparó por un INSERT
                SET @action = 'INS';
            ELSE
                -- El trigger se disparó por un UPDATE
                SET @action = 'UPD';

            INSERT INTO persona_log
            SELECT  GETDATE(),
                    APP_NAME(),
                    HOST_NAME(),
                    @@SPID,
                    USER_ID(),
                    CURRENT_USER,
                    @action,
                    ins.*
            FROM    inserted AS ins;
        END
END
GO