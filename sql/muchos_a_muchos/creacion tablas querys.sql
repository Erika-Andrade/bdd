--RELACION MUCHOS A MUCHOS
--Usuarios y grupo
create table usuarios(
	id_usu int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint id_usu_pk primary key(id_usu)
)
create table grupo(
	id_gru int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint id_gru_pk primary key(id_gru)
)
create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint us_id_fk foreign key(us_id) references usuarios(id_usu),
	constraint gr_id foreign key(gr_id) references grupo(id_gru),
	constraint us_gr_pk primary key(us_id,gr_id)
)
--Relacion habitaciones y huespedes
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitacion_num_pk primary key(habitacion_numero)
)
create table huespedes(
	id_hues int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45), 
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint id_hues_pk primary key(id_hues)
)
create table reservas(
	fecha_inicio date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key(habitacion) references habitaciones(habitacion_numero),
	constraint huesped_id_fk foreign key(huesped_id) references huespedes(id_hues),
	constraint habit_hues_pk primary key(habitacion,huesped_id)
)
--MUNICIPIO Y PROYECTO
create table ciudad(
	id_ciu int not null,
	nombre varchar(45) not null,
	constraint id_ciu_pk primary key(id_ciu)
)

create table municipio(
	id_muni int not null,
	nombre varchar(45),
	ciudad_id int,
	constraint ciudad_id_fk foreign key(ciudad_id) references ciudad(id_ciu),
	constraint id_muni_pk primary key(id_muni)
)
create table proyecto(
	id_proy int not null,
	proyecto varchar(45) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint id_proy_pk primary key(id_proy)
)
drop table proyecto_municipio
create table proyecto_municipio(
	proyecto_id int not null,
	municipio_id int not null,
	constraint municipio_id_fk foreign key(municipio_id) references municipio(id_muni),
	constraint proyecto_id_fk foreign key(proyecto_id) references proyecto(id_proy),
	constraint muni_proy_pk primary key(municipio_id,proyecto_id)
)
--*********************CONSULTAS Y SUBCONSULTAS
select usu.nombre,gr.nombre from usuarios usu, grupo gr, usuario_grupo us_gr
where usu.id_usu=us_gr.us_id 
and gr_id=us_gr.gr_id

select usu.nombre from usuarios usu, usuario_grupo us_gr
where usu.id_usu=us_gr.us_id 
and gr_id=us_gr.gr_id
and us_gr.gr_id=1

select gr.nombre,count(us_gr.us_id) from grupo gr,usuario_grupo us_gr
where gr.id_gru=us_gr.gr_id
group by gr.nombre
--2
select us.nombre,gr.nombre from usuarios us,grupo gr,usuario_grupo us_gr
where us.id_usu=us_gr.us_id
and gr.id_gru=us_gr.gr_id
and gr.nombre like '%intensivo%'

select usu.nombre,count(us_gr.us_id) from usuarios usu,usuario_grupo us_gr 
where usu.id_usu=us_gr.us_id
and us_gr.gr_id=2
group by usu.nombre

select gr.nombre,MAX(us_gr.us_id),MIN(us_gr.us_id) from grupo gr, usuario_grupo us_gr
where gr.id_gru=us_gr.gr_id
group by gr.nombre

--3
select usu.nombre,gr.fecha_creacion from usuarios usu, grupo gr,usuario_grupo us_gr
where usu.id_usu=us_gr.us_id
and gr.id_gru=us_gr.gr_id
and gr.fecha_creacion between '2020/03/08' and '2023/03/08'

select usu.nombre from usuarios usu, usuario_grupo us_gr
where usu.id_usu=us_gr.us_id
and us_gr.gr_id=3

select gr.descripcion,count(us_gr.us_id) from grupo gr, usuario_grupo us_gr
where gr.id_gru=us_gr.gr_id
and gr.descripcion like '%matutino%'
group by gr.descripcion
--HUESPEDES Y HABITACIONES
select habi.habitacion_numero,hues.nombres,hues.apellidos from habitaciones habi,huespedes hues, reservas reser
where habi.habitacion_numero=reser.habitacion
and hues.id_hues=huesped_id

select hues.nombres,hues.apellidos,reser.huesped_id from huespedes hues, reservas reser
where hues.id_hues=huesped_id
and reser.habitacion=2

select habi.habitacion_numero,count(reser.huesped_id)from habitaciones habi,reservas reser
where habi.habitacion_numero=reser.habitacion
group by habi.habitacion_numero

--2
select habi.habitacion_numero,habi.piso,hues.nombres,hues.apellidos from habitaciones habi, huespedes hues,reservas reser
where habi.habitacion_numero=reser.habitacion
and hues.id_hues=huesped_id
and habi.piso=4

select hues.nombres, hues.apellidos,reser habitacion from huespedes hues, reservas reser
where hues.id_hues=huesped_id
and reser.habitacion=3

select habi.habitacion_numero,ROUND(AVG(reser.huesped_id),2) from habitaciones habi, reservas reser
where habi.habitacion_numero=reser.habitacion
group by habi.habitacion_numero
--3
select habi.habitacion_numero,hues.nombres,hues.apellidos from habitaciones habi, huespedes hues, reservas reser
where habi.habitacion_numero=reser.habitacion
and hues.id_hues=huesped_id

select hues.nombres,hues.apellidos,reser.huesped_id from huespedes hues, reservas reser
where reser.habitacion=4

select habi.habitacion_numero, SUM(habi.precio_por_noche) from habitaciones habi,reservas reser
where habi.habitacion_numero=reser.habitacion
group by habi.habitacion_numero

--RELACION MUNICIPIOS Y PROYECTOS
--1
select municipio.nombre,proyecto.proyecto from municipio,proyecto,proyecto_municipio pr_m
where pr_m.proyecto_id=proyecto.id_proy
and pr_m.municipio_id=municipio.id_muni

select proyecto.proyecto,pr_m.proyecto_id from proyecto,proyecto_municipio pr_m
where pr_m.municipio_id=1

select municipio.nombre, count(pr_m.proyecto_id) from municipio, proyecto_municipio pr_m
where pr_m.municipio_id=municipio.id_muni
group by municipio.nombre
--2
select municipio.nombre,proyecto.proyecto from municipio,proyecto,proyecto_municipio pr_m
where pr_m.proyecto_id=proyecto.id_proy
and pr_m.municipio_id=municipio.id_muni
and municipio.nombre like '%GAD%'

select municipio.nombre,MIN(pr_m.municipio_id) from municipio, proyecto_municipio pr_m
where pr_m.municipio_id=municipio.id_muni
group by municipio.nombre
--3
select municipio.nombre,ciudad.nombre from municipio, ciudad
where municipio.ciudad_id=ciudad.id_ciu

select proyecto.proyecto,pr_m.proyecto_id from proyecto,proyecto_municipio pr_m
where pr_m.municipio_id=3

select municipio.nombre, MAX(proyecto_municipio.proyecto_id) from municipio,proyecto_municipio
where proyecto_municipio.municipio_id=municipio.id_muni 
group by municipio.nombre