create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)
--1
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(101,'12345',543.21,'C','2022/01/20','14:33')
--2
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(102,'98677',200,'D','2021/03/2','11:15:03')

--3
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(103,'45678',1000.43,'C','2/2/2022','12:22:22')
--4
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(104,'23392',234.75,'C','19/02/2024','17:40:06')
--5
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(105,'90109',800.00,'D','10/05/2021','15:45:23')
--6
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(106,'89032',1233,'D','20/07/2024','10:45:11')
--7
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(108,'99892',297.94,'C','12/01/2023','15:30:01')
--8
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(109,'23322',9002,'D','13/12/2022','16:00')
--9
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(99,'21232',999.99,'C','3/3/2023','20:33')
--10
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(200,'89389',342.99,'D','20/04/2020','12:21:45')
select * from transacciones