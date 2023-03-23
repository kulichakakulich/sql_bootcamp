select
	m.pizza_name
from
	menu m
union
select
	a.pizza_name
from
	menu a
order by
	pizza_name desc
			