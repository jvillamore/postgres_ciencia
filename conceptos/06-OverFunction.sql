select
	peliculas.pelicula_id as id,
	peliculas.titulo,
	count(*) as numero_rentas,
	row_number() over (
order by
	count(*) desc) as posicion
from
	rentas
inner join inventarios on
	rentas.inventario_id = inventarios.inventario_id
inner join peliculas on
	peliculas.pelicula_id = inventarios.pelicula_id
group by
	peliculas.pelicula_id,
	peliculas.titulo
order by
	numero_rentas desc
limit 10;