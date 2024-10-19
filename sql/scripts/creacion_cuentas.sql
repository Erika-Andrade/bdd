create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)
--1
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('23338','10239','19/02/2008',2008.50)
--2
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('33333','09345','08/03/2023',708.75)
--3
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('78999','73449','24/11/1999',10344.98)
--4
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('90099','10021','19/09/2024',3000)
--5
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('93535','43373','9/01/2021',2008.50)
--6
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('16055','97117','14/11/2004',929.09)
--7
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('43511','89937','28/12/2017',8114.57)
--8
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('52456','77056','30/08/2018',92.10)
--9
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('47720','14655','10/10/2015',5645.23)
--10
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('63005','14886','12/02/2000',680.07)


select * from cuentas