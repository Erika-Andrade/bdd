--ejemplo video
select pe.cedula,pe.nombre,pe.apellido,ec.descripcion from
personas pe,estado_civil ec
where 
pe.estado_civil_codigo=ec.codigo
and nombre like 'Sean'
--usuarios y cuentas--
select cuen.numero_cuenta,cuen.fecha_creacion,cuen.saldo,us.cedula from
cuentas cuen, usuarios us
where 
cuen.cedula_propietario=us.cedula
and
cuen.saldo
between money(100) and money(1000)
and 
cuen.fecha_creacion
between '2022/09/21' and '2023/09/21'
--Clientes y compras
select clien.cedula,clien.nombre,clien.apellido,clien.edad from
clientes clien,compras com
where 
clien.cedula=com.cedula
and 
(com.cedula like '7%' or  clien.cedula like'%7' or clien.cedula like '%7%')
and
clien.nombre='Monica'
--Estudiantes y profesores
select estu.cedula, estu.nombre,estu.apellido,estu.email,estu.fecha_nacimiento,estu.codigo_profesor from
estudiantes estu,profesores profe
where profe.codigo=estu.codigo_profesor
and (estu.apellido like '%n'or estu.apellido like 'N%'or estu.apellido like '%n%')
and profe.nombre like'Francisco%'
--persona y prestamo
select pers.cedula,pers.nombre,pers.apellido,pers.estatura,pers.fecha_nacimiento,pers.hora_nacimiento,pers.cantidad_ahorrada,pers.numero_hijos from
personas pers,prestamo pres
where pers.cedula=pres.cedula
and (pres.monto
between money(100) and money(1000))
and pers.nombre='Sean'
--productos y ventas
select pro.nombre,pro.stock from
productos pro,ventas ven
where pro.codigo=ven.codigo_producto
and ((pro.nombre like 'M%' or pro.nombre like '%m' or pro.nombre like '%m%'  )
or pro.descripcion=null)
and ven.cantidad=5
--transacciones y bancos
select trans.codigo,trans.numero_cuenta,trans.monto,trans.tipo,trans.fecha,trans.hora,ban.detalle,ban.codigo_transaccion from
transacciones trans, banco ban
where trans.codigo=ban.codigo_transaccion
and trans.tipo='C'
and (trans.numero_cuenta='22001' or  trans.numero_cuenta='22002'
or trans.numero_cuenta='22003' or  trans.numero_cuenta='22004')
and ban.codigo_transaccion=1
delete from transacciones
delete from banco
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(1,'22003',500,'C','22/01/2023','14:22');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(1,1,'Retiro')
--videojuegos y plataformas
select * from videojuegos
--select vd.nombre,vd.descripcion, vd.valoracion, pl.nombre_plataforma from
select  pl.id_plataforma, pl.nombre_plataforma, pl.codigo_videojuego from
videojuegos vd, plataformas pl
where vd.codigo=pl.codigo_videojuego
--and (descripcion like 'Guerra%' or descripcion like '%Guerra' or descripcion like '%Guerra%')
--and vd.valoracion>8
--and vd.nombre like 'D%'
and pl.codigo_videojuego=7563


--REGISTROS ENTRADA Y EMPLEADOS
--select reg.cedula_empleado,reg.fecha, emp.nombre from
select reg.codigo_registro, emp.nombre from
empleado emp, registros_entrada reg
where 
((emp.fecha between '2023-08-01' and '2023-08-31')
or (emp.fecha between '2023-10-06' and '2023-10-20'))
and reg.cedula_empleado like '08%'
and reg.hora between '9:00' and '13:00'
and reg.codigo_registro=2201
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(1919,'Alison','2023/10/19','12:20');
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(2201,'0823282999','2023/10/19','12:20',1919)