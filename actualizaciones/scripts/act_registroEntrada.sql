select * from registros_entrada

update registros_entrada set cedula_empleado='0823456799'
where extract(month from fecha)=8
