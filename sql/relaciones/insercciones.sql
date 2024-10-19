--CUENTAS
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,23564,'15/10/2022',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,89289,'01/11/2022',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,23564,'22/3/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,89289,'30/12/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,23564,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,23444,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,23444,'15/09/2023',750);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,78666,'17/11/2022',250);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,78666,'28/08/2023',350);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (28578,23444,'15/4/2023',450);
--CLIENTES Y COMPRAS
--CLIENTES
insert into clientes(cedula,nombre,apellido,edad)
values('1909345322','David','Navarrete',48);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345333','Ana','Almeida',20);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345889','Gustavo','Cerati',48);
insert into clientes(cedula,nombre,apellido,edad)
values('1909348978','Monica','Manosalvas',19);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345678','Amelia','Almeida',18);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345821','Hannibal','Lecter',43);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345722','Alejandra','Pizarnik',37);
insert into clientes(cedula,nombre,apellido,edad)
values('1709345333','Idea','Vilariño',29);
insert into clientes(cedula,nombre,apellido,edad)
values('0409345889','Nora','Mosquera',38);
insert into clientes(cedula,nombre,apellido,edad)
values('1909345879','Enrique','Munoz',67);
--COMPRAS
select * from clientes
select * from compras
insert into compras(id_compra,cedula,fecha_compra,monto)
values(113,'1909345722','16/8/2022',20.6);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(102,'1909345322','24/11/2023',100.02);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(103,'0409345889','16/4/2022',10.75);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(104,'1909345333','14/2/2024',53.09);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(105,'1909345333','12/3/2021',5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(106,'1909345322','10/7/2020',120.88);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(107,'1909345889','10/5/2023',200.6);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(108,'1909345889','31/10/2024',6.67);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(112,'1909345821','20/7/2022',9.21);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(111,'1909345332','15/9/2021',21.6);
--productos y ventas
--productos
select * from productos
delete from productos
select * from productos
insert into productos(codigo,nombre,precio,stock) 
values (1,'Mostaza',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);
--ventas
delete from ventas
select * from ventas
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1,10,'20/3/2023',4);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(2,1,'19/3/2021',20);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(11,7,'2/2/2024',19);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(4,9,'3/5/2022',6);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(5,2,'25/8/2022',11);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(6,7,'10/6/2024',15);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(7,8,'20/3/2021',7);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(8,7,'11/11/2020',1);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(9,10,'10/4/2023',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(10,3,'9/10/2024',7);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(12,2,'10/3/2024',6);
--videojuegos 
select * from videojuegos
delete from videojuegos
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'Guerra', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of War', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);
select * from plataformas
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(101,'idk',63240)
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(102,'Unity',63240);
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(103,'Steam',63240);
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(104,'Godot',70215);
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(105,'Unreal',63240);
--estudiantes
select *from estudiantes
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003',33782);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000',89892);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',77777);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',33782);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',33782);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002',77777);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476807,'Paula','Luna','PauCeli31@gmail.com','30/09/2010',89892);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',33782);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476809,'Anabel','Hernandez','WPerlaza18@gmail.com','12/04/2000',67762);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476860,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001',67762);
--profesors
select * from profesores
insert into profesores(codigo,nombre)
values(33782,'Francisco Rivadeneira');
insert into profesores(codigo,nombre)
values(67762,'Blanca Mendez');
insert into profesores(codigo,nombre)
values(89892,'Roberto Vega');
insert into profesores(codigo,nombre)
values(88888,'Santiago Mosquera');
insert into profesores(codigo,nombre)
values(55555,'Maria Ramos');
insert into profesores(codigo,nombre)
values(77777,'Hector Almeida');
insert into profesores(codigo,nombre)
values(13131,'Noemi Andrade');
insert into profesores(codigo,nombre)
values(12122,'Silvia Donoso');
insert into profesores(codigo,nombre)
values(78267,'Enriqueta Ulloa');
insert into profesores(codigo,nombre)
values(52451,'Maritza Sola');
--REGISTROS_ENTRADA

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12345, '1754416489', '18/12/2023', '11:40',2209);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12355, '1758254591', '03/08/2023', '8:33',2202);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12346, '1715974492', '25/09/2023', '13:00',2222);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12347, '1735642583', '28/12/2023', '9:13',2209);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12389, '1707416984', '16/10/2023', '8:00',2201);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12349, '1778541235', '17/11/2023', '10:00',2201);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12310, '1742158637', '14/12/2023', '11:09',2222);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12311, '1756321784', '15/8/2023', '12:45',2202);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12358, '1712546328', '07/08/2023', '12:00',2201);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12378, '1725785413', '02/09/2023', '10:00',2201);
select * from registros_entrada
--Empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Eydan Romero','2/9/2023','9:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2222,'Amelia Diaz','20/10/2023','8:30');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2202,'Luis Baghn','2/8/2023','11:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2209,'Ana Mero','2/11/2023','12:00');
--personas
select * from personas
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1005342728','Sean','Id','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1007887878','Micaela','Realpe','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1005342725','Mateo','Rosales','S');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1105342728','Andy','Morocho','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1705342728','Ana','Bastidas','C');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1663427898','Daniel','Torres','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1005342778','Wendy','Imbaquingo','S');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1020842728','Stefania','Morales','C');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1035342728','Leslie','Pozo','U');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1015342718','Carolina','Toapanta','S');
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1050354786','Madellin','España','S');
--prestamos
delete from prestamo
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1005342728',230,'2/9/2024','9:34','Luis Nazareno');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1050354786',1000,'21/8/2024','11:59','Henry Linto');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1015342718',320,'12/7/2024','12:44','Anahi Paz');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1035342728',547,'23/6/2024','9:34','Oscar Pozo');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1020842728',989,'20/6/2024','11:20','Jose Velasco');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1005342725',102,'2/10/2024','17:00','Lola Cabicando');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1105342728',444,'17/2/2024','14:11','Emilia Nazareno');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1705342728',788,'2/1/2024','12:30','Luis Morales');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1663427898',211,'2/12/203','13:32','Dayana Acosta');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1007887878',230,'2/9/2024','9:10','Ana Moreira');

--transacciones
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(22004, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha,hora)
values(22002, '32015', 400, 'C', '9/9/2023','13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(22001, '85213', 2000, 'C', '11/09/1999', '7:30');
--banco
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(1,22002,'Retiro');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(2,54193,'Venta');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(3,22001,'Producto');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(4,22001,'Producto');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(5,95124,'Venta');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(6,78542,'Producto A');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(7,78542,'Producto B');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(8,22001,'Venta aprobada');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(9,32165,'idk');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(10,22001,'retiro');