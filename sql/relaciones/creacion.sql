select * from personas
delete from personas
alter table personas
add column estado_civil_codigo char(1) not null
create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)
alter table personas
add constraint personas_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil(codigo

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1054434392','Santiago','Mosqueras','U')
select * from estado_civil
insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');


--CEUNTASSS--
select * from cuentas
--creacion tabla usaurios
create table usuarios(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint cedula_pk primary key(cedula)
)
delete from cuentas
alter table cuentas
add constraint cedula_propietario_fk
foreign key(cedula_propietario)
references usuarios(cedula)
insert into usuarios(cedula,nombre, apellido)
values('23444','Sarah','Trujillo');
insert into usuarios(cedula,nombre, apellido)
values('23564','Alex','Hernandez');
insert into usuarios(cedula,nombre, apellido)
values('89289','Monica','Delgado');
insert into usuarios(cedula,nombre, apellido)
values('78666','Sonia','Idk');
--CLIENTES
create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint id_compra_pk primary key (id_compra)
)
select * from clientes
alter table compras
add constraint cedula_fk
foreign key(cedula)
references clientes(cedula)
insert into clientes(cedula,nombre,apellido,edad)
values('1909345322','David','Navarrete',48);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345333','Ana','Almeida',20);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345889','Gustavo','Cerati',48);
--productos
create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint id_venta_pk primary key(id_venta)
)
alter table ventas
add constraint codigo_producto_fk
foreign key(codigo_producto)
references productos(codigo)
--videojuegos
create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint id_plataforma_pk primary key(id_plataforma)
)
alter table plataformas
add constraint codigo_videojuego_fk
foreign key(codigo_videojuego)
references videojuegos(codigo)
--estudiantes
alter table estudiantes
add column codigo_profesor int