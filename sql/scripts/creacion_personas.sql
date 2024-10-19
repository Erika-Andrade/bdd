create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	hora_nacimiento time,
	fecha_nacimiento date,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)

insert into personas(cedula,nombre,apellido)
values('1005342728','Sarah','Id')

insert into personas(cedula,nombre,apellido,estatura)
values('1005343719','Ana','Mora',1.54)

insert into personas(cedula,nombre,apellido,numero_hijos)
values('1001277333','Hannibal','Lecter',1)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values('1001288993','Will','Graham',2,1.78,'22/05/2000','10:03',200.34)

select * from personas
select nombre from personas