select * from videojuegos
update videojuegos set descripcion='Mejor puntuado'
where valoracion >90 
--Las valoraciones de esta tabla son del 1 al 100, las mejores puntuadas serian mayores que 90