create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	constraint registroentrada_pk primary key(codigo_registro)
)
--1
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(100,'1002333077','24/11/2007')
--2
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(101,'1732207863','25/05/1999')
--3
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(102,'1050637899','04/02/1997')
--4
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(103,'0723845549','08/06/2003')
--5
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(105,'0466903443','10/06/2001')
--6
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(108,'1723299833','30/08/2006')
--7
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(111,'1332544644','23/03/1995')
--8
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(112,'0777883242','8/4/2004')
--9
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(122,'0999288823','27/1/1993')
--10
insert into registros_entrada(codigo_registro,cedula_empleado,fecha)
values(302,'1230365773','11/10/2000')
select * from registros_entrada