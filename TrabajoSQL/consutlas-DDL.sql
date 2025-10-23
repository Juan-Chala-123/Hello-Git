create database Consultas_DDL_feria;
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