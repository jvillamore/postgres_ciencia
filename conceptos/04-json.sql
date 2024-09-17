insert
	into
	ordenes(info)
values
('{"cliente":"Edna Gonzales", "items":{"producto":"Biberon", "cantidad":3}}'),
('{"cliente":"Juan Moda", "items":{"producto":"Carro", "cantidad":4}}'),
('{"cliente":"Edna Ramos", "items":{"producto":"Zapatos", "cantidad":5}}');

select
	*
from
	ordenes;

select
	info->>'cliente'
from
	ordenes;

select
	info->>'cliente'
from
	ordenes
where
	info->'items'->>'producto' = 'Carro';

select
	min(
	cast(info->'items'->>'cantidad' as integer)) as minimo,
	max(
	cast(info->'items'->>'cantidad' as integer)) as maximo,
	avg(
	cast(info->'items'->>'cantidad' as integer)) as aveg
from
	ordenes;
