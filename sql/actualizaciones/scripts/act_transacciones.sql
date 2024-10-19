select * from transacciones
update transacciones set tipo='T'
where monto>money(100)
	and monto<money(500)
	and extract(month from fecha)=9
	and hora between '14:00' and '20:00'
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(114,'28983',200,'C','2024/09/3','15:34:23')