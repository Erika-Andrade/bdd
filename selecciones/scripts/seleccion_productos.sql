select * from productos
where nombre like 'Q%' 
insert into productos(codigo,nombre,precio,stock)
values(688,'Queso Mozarella',1.20,3)

select * from productos
where descripcion is null

select * from productos
where precio
between money(2) and money(3)