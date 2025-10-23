-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Juan Pablo Chala
-- Create date: 02/08/2025
-- Description:	Primer procedimiento de almacenado
-- =============================================
use Consultas_DDL_feria;
GO

CREATE OR ALTER PROCEDURE sp_feria
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @sql nvarchar(MAX);

    -- Insert statements for procedure here
	SET @sql = '
				use Consultas_DDL_feria;

				create table feria (
					id int identity(1, 1) primary key,
					ciudad varchar(50),
					name varchar(100),
					fecha_inicio date,
					fecha_fin date
				);

				create table pabellon (
					id int identity(1,1) primary key,
					feria_id int,
					name varchar(100),
					stand_limit int,
					tematica varchar(50),
					foreign key (feria_id) references feria(id)
				);

				create table empresa (
					id int identity(1, 1) primary key,
					name varchar(100)
				);

				create table stand (
					id int identity(1, 1) primary key,
					empresa_id int,
					pabellon_id int,
					foreign key (empresa_id) references empresa(id),
					foreign key (pabellon_id) references pabellon(id),
				);

				create table producto (
					id int identity(1, 1) primary key,
					name varchar(100),
					stand_id int,
					empresa_id int,
					foreign key (stand_id) references stand(id),
					foreign key (empresa_id) references empresa(id)
				)

				create table responsable (
					id int identity(1, 1) primary key,
					name varchar(100),
					producto_id int,
					foreign key (producto_id) references producto(id)
				)

				create table visitante (
					id int identity(1, 1) primary key,
					name varchar(100),
					email varchar(100),
					tipo_registro varchar(100),
					tipo_entrada varchar(100)
				);

				create table charla (
					id int identity(1, 1) primary key,
					name varchar(100),
					nombre_ponente varchar(100),
					empresa_id int,
					visitante_id int,
					foreign key (empresa_id) references empresa(id),
					foreign key (visitante_id) references visitante(id)
				);
				
				insert into feria (ciudad, name, fecha_inicio, fecha_fin) values
				(''Neiva'', ''Feria Internacionalde Tecnolog�a'', ''2025-01-01'', ''2025-02-01'');

				insert into pabellon (feria_id, name, stand_limit, tematica) values
				(1, ''Norte'', 30, ''Machine Learning''),
				(1, ''Sur'', 30, ''Deep Learning''),
				(1, ''Occidental'', 30, ''Hardware''),
				(1, ''Oriental'', 30, ''Software''),
				(1, ''Norte'', 30, ''Informatica''),
				(1, ''Sur'', 30, ''Seguridad''),
				(1, ''Norte'', 30, ''Ciberseguridad''),
				(1, ''Occidental'', 30, ''Inteligencia Artificial''),
				(1, ''Oriental'', 30, ''Mecanografia''),
				(1, ''Norte'', 30, ''Deep Learning'');

				insert into empresa (name) values
				(''Punto Net''),
				(''Microsoft''),
				(''Apple''),
				(''Amazon''),
				(''Android''),
				(''Google''),
				(''Meta''),
				(''Oracle''),
				(''Adobe''),
				(''Internetsss'');

				insert into stand (empresa_id, pabellon_id) values
				(1, 1),
				(2, 2),
				(3, 3),
				(4, 4),
				(5, 5),
				(6, 6),
				(7, 7),
				(8, 8),
				(9, 9),
				(10, 10);

				insert into producto (name, stand_id, empresa_id) values
				(''Celular Anti-Agua'', 1, 1),
				(''Antivirus'', 2, 2),
				(''Servicios Nube'', 4, 4),
				(''Android 16'', 5, 5),
				(''Iphone 18 Pro Max'', 3, 3),
				(''Meta AI'', 7, 7),
				(''Gemini AI'', 6, 6),
				(''Oracle Cloud'', 8, 8),
				(''Adobe Photoshop'', 9, 9),
				(''PC Todo en uno'', 10, 10);

				insert into responsable (name, producto_id) values
				(''Juan'', 1),
				(''Diego'', 2),
				(''Pedro'', 3),
				(''Alfredo'', 4),
				(''Yina'', 5),
				(''Fernando'', 6),
				(''Kelly'', 7),
				(''Cristian'', 8),
				(''Mina'', 9),
				(''Ana'', 10);

				insert into visitante (name, email, tipo_registro, tipo_entrada) values
				(''Juan'', ''juan@gmail.com'', ''En Linea'', ''VIP''),
				(''Fernando'', ''Fernando@hotmail.com'', ''Presencial'', ''Estudiante''),
				(''kate'', ''kate@gmail.com'', ''En Linea'', ''General''),
				(''Sanchez'', ''sanches@gmail.com'', ''En Linea'', ''VIP''),
				(''Juan Cortez'', ''cortez@hotmail.com'', ''Presencial'', ''VIP''),
				(''Brayan'', ''Brayan@gmail.com'', ''En Linea'', ''General''),
				(''Lupe'', ''Lupe@hotmail.com'', ''Presencial'', ''Estudiante''),
				(''Naoriby'', ''nairoby@gmail.com'', ''En Linea'', ''VIP''),
				(''Isabella'', ''bella@gmail.com'', ''Presencial'', ''General''),
				(''Luciana'', ''luciana@gmail.com'', ''Presencial'', ''Estudiante'');

				insert into charla (name, nombre_ponente, empresa_id, visitante_id) values
				(''AI'', ''Carlos'', 1, 1),
				(''Automatizacion'', ''Ceballos'', 2, 2),
				(''Ciberseguriddad'', ''Daniel'', 3, 3),
				(''Machine Learning'', ''Jhonatan'', 4, 2),
				(''Deep Learning'', ''Luis'', null, 4),
				(''Google Dorking'', ''Laura'', 6, 7),
				(''OSINT'', ''Sofia'', null, 8),
				(''Cloud'', ''Mendi'', 8, 7),
				(''Seguridad'', ''Karol'', null, 8),
				(''Hardware'', ''Jairo'', 10, 10);
				
				select s.id, e.name as [Nombre Empresa], p.name as [Ubicacion Pabellon], p.tematica [Tematica Pabellon]
				from stand s
				inner join empresa e on s.empresa_id = e.id
				inner join pabellon p on s.pabellon_id = p.id;

				select p.name as [Nombre Producto], s.id as [Id Stand], e.name as [Nombre Empresa]
				from producto p
				inner join stand s on p.stand_id = s.id
				inner join empresa e on p.empresa_id = e.id;

				select 
					c.name as [Nombre Charla], 
					c.nombre_ponente as [Nombre Ponente], 
					coalesce(e.name, ''No Hay Empresa Patrocinadora'' ) as [Nombre Empresa], 
					v.name as [Nombre Visitante]
				from charla c
				left join empresa e on c.empresa_id = e.id
				left join visitante v on c.visitante_id = v.id;';

	exec (@sql);
END
GO

exec sp_feria;
