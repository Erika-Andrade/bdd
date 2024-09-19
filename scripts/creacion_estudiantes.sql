create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)
--1
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1001277333','Hannibal','Lecter','hanni609L@gmail.com','17/10/1999')
--2
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1101160032','Alicia','Jimenez','idkidkL@hotmail.com','08/1/2002')

--3
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0112262499','Alexandra','Zurita','zuriAlexa@gmail.com','24/03/2010')

--4
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1717795994','Antonio','Perarla','toniPerr444@gmail.com','21/7/2008')

--5
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('6033046848','Nora','Condor','alexita555dr@gmail.com','09/12/2001')
--6
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0921401378','Giselle','Aguilar','ikikik78@gmail.com','05/11/2006')
--7
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1304734625','Victor','Ramos','6777yuhuuj@yahoo.com','03/5/2009')
--8
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1003445988','Byron','Ayala','estabanguacan10@gmail.com','23/4/2005')

select * from estudiantes