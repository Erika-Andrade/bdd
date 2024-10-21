--RELACION MUCHOS A MUCHOS
--Usuarios y grupo
create table usuarios(
	id_usu int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint id_usu_pk primary key(id_usu)
)
create table grupo(
	id_gru int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint id_gru_pk primary key(id_gru)
)
create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint us_id_fk foreign key(us_id) references usuarios(id_usu),
	constraint gr_id foreign key(gr_id) references grupo(id_gru),
	constraint us_gr_pk primary key(us_id,gr_id)
)
--Relacion habitaciones y huespedes
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitacion_num_pk primary key(habitacion_numero)
)
create table huespedes(
	id_hues int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45), 
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint id_hues_pk primary key(id_hues)
)
create table reservas(
	fecha_inicio date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key(habitacion) references habitaciones(habitacion_numero),
	constraint huesped_id_fk foreign key(huesped_id) references huespedes(id_hues),
	constraint habit_hues_pk primary key(habitacion,huesped_id)
)
--MUNICIPIO Y PROYECTO
create table ciudad(
	id_ciu int not null,
	nombre varchar(45) not null,
	constraint id_ciu_pk primary key(id_ciu)
)

create table municipio(
	id_muni int not null,
	nombre varchar(45),
	ciudad_id int,
	constraint ciudad_id_fk foreign key(ciudad_id) references ciudad(id_ciu),
	constraint id_muni_pk primary key(id_muni)
)
create table proyecto(
	id_proy int not null,
	proyecto varchar(45) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint id_proy_pk primary key(id_proy)
)
drop table proyecto_municipio
create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_id_fk foreign key(municipio_id) references municipio(id_muni),
	constraint proyecto_id_fk foreign key(proyecto_id) references proyecto(id_proy),
	constraint muni_proy_pk primary key(municipio_id,proyecto_id)
)
--