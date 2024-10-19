create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(50),
	precio money not null,
	stock int,
	constraint productos_pk primary key(codigo)
	
)
insert into productos(codigo,nombre,descripcion,precio,stock)
values('001','Coca Cola','Lite',1.50,12)

insert into productos(codigo,nombre,descripcion,precio,stock)
values('034','Agua mineral','Agua purificada y embotellada',0.65,20)

insert into productos(codigo,nombre,descripcion,precio,stock)
values('778','Frutaris','Jugo sabor naranja',0.75,30)

insert into productos(codigo,nombre,descripcion,precio,stock)
values('900','Azucar','Azucar refinada',2.30,89)

insert into productos(codigo,nombre,descripcion,precio,stock)
values('899','Yogurt Ta´rico','2L Sabor Mora y Fresa',7.60,8)

insert into productos(codigo,nombre,precio)
values('898','Leche Toni',0.95)

insert into productos(codigo,nombre,precio)
values('766','Papas Ruffles',2.00)

insert into productos(codigo,nombre,precio)
values('99','Polito',0.25)


select * from productos

