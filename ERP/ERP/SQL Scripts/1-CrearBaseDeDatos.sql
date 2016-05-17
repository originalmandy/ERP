USE master
GO

DECLARE @QUERY NVARCHAR(MAX), @DATA_PATH NVARCHAR(100), @LOG_PATH NVARCHAR(100), @ERROR BIT, @LOG NVARCHAR(MAX)

SET @ERROR = 0

SET @DATA_PATH = CAST(SERVERPROPERTY('INSTANCEDEFAULTDATAPATH') AS VARCHAR(MAX))
SET @DATA_PATH = @DATA_PATH + 'ERP.MDF'
SET @LOG_PATH = CAST(SERVERPROPERTY('INSTANCEDEFAULTLOGPATH') AS VARCHAR(MAX))
SET @LOG_PATH = @LOG_PATH + 'ERP_log.LDF'

/*
--VERIFICAR SI LA BASE DE DATOS EXISTE, PRIMERO SE BORRA 
--ESTE CODIGO DEBE ESTAR COMENTARIADO PARA EVITAR DESASTRES DEBIDO 
--A EXECUCION SIN PRECAUCION. MIENTRAS SE DESARROLLA LA BASE DE DATOS DEBE ESTAR
--DESCOMENTARIADO PARA PROBAR EL SCRIPT DE CREACION
*/

IF DB_ID('ERP') IS NOT NULL
	DROP DATABASE ERP

PRINT 'CREANDO LA BASE DE DATOS ERP...';

SET @QUERY = '
CREATE DATABASE ERP ON  PRIMARY 
( NAME = N''ERP'', FILENAME = N''' + @DATA_PATH + ''', SIZE = 10MB , MAXSIZE = UNLIMITED, FILEGROWTH = 10% )
	LOG ON 
( NAME = N''ERP_log'', FILENAME = N''' + @LOG_PATH + '''  , SIZE = 10MB , MAXSIZE = 10GB , FILEGROWTH = 10%)
COLLATE LATIN1_GENERAL_CI_AI;'

BEGIN TRY
	SET @LOG = @LOG + @QUERY
	EXEC SP_EXECUTESQL @QUERY

	--ACTIVAR LA COMPATIBILIDAD CON FUNCIONES DE SQL 2012 (POR EJEMPLO DIAGRAMAS DE BASES DE DATOS, PIVOTES, ETC.)
	EXEC DBO.sp_dbcmptlevel @dbname=ERP, @new_cmptlevel=110;

	SET @LOG = @LOG + 'EXEC DBO.sp_dbcmptlevel @dbname=ERP, @new_cmptlevel=110;'
END TRY
BEGIN CATCH 
	SET @ERROR = 1
	GOTO SALIR
END CATCH

--PERMITIR BUSQUEDAS EN CAMPOS TIPO TEXTO Y OTRAS FUNCIONALIDADES
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC ERP.DBO.sp_fulltext_database @action = 'enable'
END;

ALTER DATABASE ERP SET ANSI_NULL_DEFAULT OFF ;
ALTER DATABASE ERP SET ANSI_NULLS OFF ;
ALTER DATABASE ERP SET ANSI_PADDING OFF ;
ALTER DATABASE ERP SET ANSI_WARNINGS OFF ;
ALTER DATABASE ERP SET ARITHABORT OFF ;
ALTER DATABASE ERP SET AUTO_CLOSE OFF ;
ALTER DATABASE ERP SET AUTO_CREATE_STATISTICS ON ;
ALTER DATABASE ERP SET AUTO_SHRINK OFF ;
ALTER DATABASE ERP SET AUTO_UPDATE_STATISTICS ON ;
ALTER DATABASE ERP SET CURSOR_CLOSE_ON_COMMIT OFF ;
ALTER DATABASE ERP SET CURSOR_DEFAULT  GLOBAL ;
ALTER DATABASE ERP SET CONCAT_NULL_YIELDS_NULL OFF ;
ALTER DATABASE ERP SET NUMERIC_ROUNDABORT OFF ;
ALTER DATABASE ERP SET QUOTED_IDENTIFIER OFF ;
ALTER DATABASE ERP SET RECURSIVE_TRIGGERS OFF ;
ALTER DATABASE ERP SET ENABLE_BROKER ;
ALTER DATABASE ERP SET AUTO_UPDATE_STATISTICS_ASYNC OFF ;
ALTER DATABASE ERP SET DATE_CORRELATION_OPTIMIZATION OFF ;
ALTER DATABASE ERP SET TRUSTWORTHY OFF ;
ALTER DATABASE ERP SET ALLOW_SNAPSHOT_ISOLATION OFF ;
ALTER DATABASE ERP SET PARAMETERIZATION SIMPLE ;
ALTER DATABASE ERP SET READ_WRITE ;
ALTER DATABASE ERP SET RECOVERY FULL ;
ALTER DATABASE ERP SET MULTI_USER ;
ALTER DATABASE ERP SET PAGE_VERIFY CHECKSUM ;
ALTER DATABASE ERP SET DB_CHAINING OFF;

PRINT 'BASE DE DATOS ERP CREADA SATISFACTORIAMENTE!!!';

SALIR:
	IF @ERROR = 1
		SELECT @ERROR AS ERROR, @LOG AS ERROR_LOG