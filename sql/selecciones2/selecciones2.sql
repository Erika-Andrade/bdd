
--productos
select * from productos
where stock=10 and precio<money(10)

select nombre,stock from productos
where descripcion like '% %' or nombre like '%m%' or nombre like '%m'

select nombre from productos
where descripcion is null or stock=0

--cuentas
select numero_cuenta,saldo from cuentas
where saldo>money(100) and saldo<money(1000)

select * from cuentas
where fecha_creacion
between '23/9/2023' and '23/9/2024'

select * from cuentas
where saldo=money(0) or cedula_propietario like '%2'

--estudiantes
select nombre, apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

select nombre from estudiantes
where (cedula like '%32' or cedula like '%32%' or cedula like '%32')
	and cedula like '18%'
	
select nombre, apellido from estudiantes
where cedula like '%06' or cedula like '17%'

--registros Entradas
select * from registros_entrada
where extract(month from fecha)=9 or cedula_empleado like '17%'

select * from registros_entrada
where extract(month from fecha)=8 and cedula_empleado like '17%' 
	and hora between '8:00' and '12:00'
	
select * from registros_entrada
where (extract(month from fecha)=8 and cedula_empleado like '17%' 
	and hora between '8:00' and '12:00') or(extract(month from fecha)=9 
	and cedula_empleado like '08%' and hora between '9:00' and '13:00')
--videojuegos
select * from videojuegos
where (nombre like 'C%' or nombre like '%c%' or nombre like 'c%') 
	or valoracion=7 
	
select * from videojuegos
where codigo between '3' and '7'
	or valoracion=7

select * from videojuegos
where (valoracion>7 and nombre like 'C%')
or (valoracion>8 and nombre like 'D%')
--transacciones
select * from transacciones
where tipo like 'C' and (numero_cuenta='22201' or numero_cuenta='22204')

select * from transacciones
where tipo like 'D' and (extract(month from fecha)=5 and extract(day from fecha)=25)
	and numero_cuenta between '22007' and '22010'
	
select * from transacciones
where codigo between '1' and '5' 
	and (extract(month from fecha)=5)
	and ((extract(day from fecha)=26) or (extract(day from fecha)=29))
	and numero_cuenta between '22002' and '22004'


	
