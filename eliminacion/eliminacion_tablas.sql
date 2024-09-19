select * from transacciones
--productos
delete from productos
where descripcion is null
--cuentas
delete from cuentas
where cedula_propietario like '10%'
--estudiantes
delete from estudiantes
where cedula like '%05'
--registroEntradas
delete from registros_entrada
where extract(month from fecha)=6
--videojuegos
delete from videojuegos
where valoracion<7
--transacciones
delete from transacciones
where hora
between '14:00' and '18:00'
	and fecha 
	between '1/08/2024' and '31/08/2024'


