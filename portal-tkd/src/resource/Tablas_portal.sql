drop table loggin.respuestas
drop table loggin.excepciones
drop table loggin.permisos
drop table loggin.logs_acceso
drop table loggin.sesion
drop table loggin.historico_password
drop table loggin.aplicaciones
drop table loggin.usuario_det
drop table loggin.usuario
drop table loggin.rol
drop table loggin.catalogo_detalle
drop table loggin.catalogo
drop schema loggin

go
create schema loggin
go

GRANT select, insert, update, delete ON SCHEMA :: loggin TO usraplication WITH GRANT OPTION;  

create table loggin.catalogo(
	id_catalogo int not null identity(1,1) primary key,
	descripcion nvarchar(200), 
	activo Bit default '1',  
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint uc_catalogo unique (descripcion)
)
go


create table loggin.catalogo_detalle(
	id_cat_detalle int not null identity(1,1) primary key,
	id_catalogo int not null,
	clave nvarchar(100) not null,
	descripcion nvarchar(200), 
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_catalogo_detalle foreign key (id_catalogo) references loggin.catalogo(id_catalogo),
	constraint uc_catalogo_det unique (id_catalogo, clave)
) 
go

create table loggin.rol (
  id int identity(1,1) not null primary key,
  prioridad int not null,
  descripcioncorto nvarchar(45) not null,
  descripcionlargo nvarchar(245)null,
  activo Bit default '1', 
  usuariocreacion nvarchar(12) not null,
  usuariomodificacion nvarchar(12) null,
  fechacreacion datetime not null default current_timestamp,
  fechamodificacion datetime not null default current_timestamp,
  constraint uc_rol unique(prioridad, descripcioncorto)  
)
go


create table loggin.usuario(
	id integer identity(1,1) not null primary key,
	nombre nvarchar(90) not null,
	appaterno nvarchar(50) not null,
	apmaterno nvarchar(50) not null,
	nombrecorto nvarchar(12) not null,
	curp nvarchar(18) null,
	idrol int not null,
	contrasenia nvarchar(45) not null,
	vecesintentologuearse int not null default '3',
	idcatalogo int not null,--proviene de la tabla catalogo_detalle
	intentospermitidos int not null,--proviene de la tabla catalogo_detalle
	rfc nvarchar(13) null,
	email nvarchar(255) null,
	idcatalogocaducidad int null,--proviene de la tabla catalogo_detalle
	numdiascaducar int not null default '90',--proviene de la tabla catalogo_detalle
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint uc_usuario unique(nombrecorto,email),
	constraint fk_usuario foreign key (idrol) references loggin.rol(id)
)
go


create table loggin.usuario_det(
	id integer identity(1,1) not null primary key,
	idusuario integer not null,
	telefono1 nvarchar(13) null,
	telefono2 nvarchar(13) null,
	telcelular1 nvarchar(13) null,
	telcelular2 nvarchar(13) null,
	calle nvarchar(255) null,
	colonia nvarchar(150) null,
	estado nvarchar(60) null,
	delegacion_municipio nvarchar(150) null,
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_usuario_det foreign key (idusuario) references loggin.usuario(id),
	constraint uc_usuario_det unique(telcelular1)
)

go
create table loggin.aplicaciones(
	id integer identity(1,1) not null primary key,
	idpadre integer null,
	desc_corto nvarchar(50) not null,
	descripcionaplicacion nvarchar(255) null,
	urlapp nvarchar(255) not null,
	parametros nvarchar(255) not null,
	idcatalogo integer not null,--proviene de la tabla catalogo_detalle  
	idposicionmenu integer not null,--proviene de la tabla catalogo_detalle
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_aplicaciones foreign key (idpadre) references loggin.aplicaciones(id)
)
go


create table loggin.historico_password(
	id integer identity(1,1) not null primary key,
	idusuario integer not null,
	contrasenia nvarchar(255) null, 
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_historico_password foreign key (idusuario) references loggin.usuario(id) 
)
go


create table loggin.sesion(
	id integer identity(1,1) not null primary key,
	idusuario integer not null,
	sesion nvarchar(255) null, 
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_sesion foreign key (idusuario) references loggin.usuario(id) 
)
go


create table loggin.logs_acceso(
	id integer identity(1,1) not null primary key,
	idapp integer not null,
	idusuario integer not null,
	ippublica nvarchar(23) null,
	ipprivada nvarchar(23) null, 
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_logs_acceso1 foreign key (idapp) references loggin.aplicaciones(id),
	constraint fk_logs_acceso2 foreign key (idusuario) references loggin.usuario(id) 
)
go


create table loggin.permisos(
	id integer identity(1,1) not null primary key,
	idapp integer not null, 
	idrol integer not null,
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_permisos1 foreign key (idapp) references loggin.aplicaciones(id),
	constraint fk_permisos2 foreign key (idrol) references loggin.rol(id) 
)
go


create table loggin.excepciones(
	id integer identity(1,1) not null primary key,
	idapp integer not null, 
	idusuario integer not null,
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_excepciones1 foreign key (idapp) references loggin.aplicaciones(id),
	constraint fk_excepciones2 foreign key (idusuario) references loggin.usuario(id)
)
go

create table loggin.respuestas(
	id integer identity(1,1) not null primary key,
	idcatalogo integer not null,--proviene de la tabla catalogo_detalle  
	idpregunta integer not null, --proviene de la tabla catalogo_detalle  
	idusuario integer not null,
	respuesta nvarchar(99) not null,
	activo Bit default '1', 
	usuariocreacion nvarchar(12) not null,
	usuariomodificacion nvarchar(12) null,
	fechacreacion datetime not null default current_timestamp,
	fechamodificacion datetime not null default current_timestamp,
	constraint fk_respuestas1 foreign key (idusuario) references loggin.usuario(id)
)
go

--diferencia de fechas
--SELECT DATEDIFF(day, '2014/01/01', '2014/04/28');