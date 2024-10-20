--EJEMPLOS VIDEO
--AGREGACION
--OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
--COUNT
select count(ec.codigo) 
from personas per,estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='C'
--PROMEDIO
select AVG(cast(cantidad_ahorrada as numeric)) from personas

select AVG(cast(cantidad_ahorrada as numeric))
from personas per,estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='C'
-- MAX -MIN- SUM
--group by
select estado_civil_codigo, count(*) from personas
group by estado_civil_codigo

select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo
--RETO 25
--relacion usaurios y cuentas
--1
select * from usuarios
select AVG(cast(saldo as numeric)) 
from cuentas cuen, usuarios usu
where usu.cedula='23444'
--2
select tipo_cuenta, count(*) from usuarios
group by tipo_cuenta
--Relacion clientes y compras
select * from compras
select comp.cedula,SUM(monto) 
from compras comp,clientes clien
group by comp.cedula

select fecha_compra, count(fecha_compra) from compras 
where fecha_compra='2022-07-20'
group by fecha_compra
--Relaciones estudiante sy profesores
select * from estudiantes
select codigo_profesor, count(*) 
from estudiantes estu
group by codigo_profesor

select AVG(EXTRACT(YEAR FROM CURRENT_DATE)- EXTRACT(YEAR FROM fecha_nacimiento))
from estudiantes
--Relaciones personas y prestamos
select pres.cedula,SUM(monto) 
from personas per,prestamo pres
group by pres.cedula

select count(*) from personas
where numero_hijos>1
--Relacion productos y ventas
 select MAX(precio) from productos

 select SUM(cantidad) from ventas
 --Relacion transacciones y banco
 select count(*) from transacciones
 where tipo='C'
select * from transacciones
 select numero_cuenta,ROUND(AVG(cast(monto as decimal)),2)
 from transacciones
 group by numero_cuenta
--Relacion videojuegos y platafromas
select codigo_videojuego,count(id_plataforma) from plataformas
group by codigo_videojuego

select ROUND(AVG(valoracion),2) from videojuegos
--relacion registros_entrada y empleados
select cedula_empleado,count(codigo_registro) 
from registros_entrada
group by cedula_empleado

select MIN(fecha), MAX(fecha) from registros_entrada