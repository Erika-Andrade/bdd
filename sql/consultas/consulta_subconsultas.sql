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
