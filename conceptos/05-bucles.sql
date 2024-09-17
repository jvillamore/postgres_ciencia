with recursive tabla_recursiva(i) as (
values(0)
union all
select
	i + 1
from
	tabla_recursiva
where
	i < 100
)
select
	sum(i)
from
	tabla_recursiva;

-- tabla secuencial
with recursive tabla_recursiva(i) as (
values(0)
union all
select
	i + 1
from
	tabla_recursiva
where
	i < 10
)
select
	i
from
	tabla_recursiva;
