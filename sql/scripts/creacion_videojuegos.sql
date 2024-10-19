create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)
--1
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(101,'The Last of Us','Accion-aventura en un mundo postapocaliptico',95)
--2
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(202,'Portal 2','Juego de rompecabezas primera persona',92)
--3
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(303,'God of War(2018)','Accion-aventura mundo nordico',94)
--4
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(404,'The Elder Scrolls V_Skyrim','Juego de rol en mundo abierto',90)
--5
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(505,'Res Dead Redemption 2','Juego rol en oeste americano',96)
--1
insert into videojuegos(codigo,nombre,valoracion)
values(606,'Horizon Zero Dawn',91)
--2
insert into videojuegos(codigo,nombre,valoracion)
values(707,'The Witcher 3',93)
--3
insert into videojuegos(codigo,nombre,valoracion)
values(808,'Dark Souls III',92)


select * from videojuegos