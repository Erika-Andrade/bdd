insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('18992','17890','12/3/2023',90)
select * from cuentas
update cuentas set saldo=10
where cedula_propietario like '17%'