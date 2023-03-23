select
	pizza_name
	,p.name pizzeria_name
from
	person_order o
right join
	person a
	on
	o.person_id = a.id
right join
	menu m
	on
	o.menu_id = m.id
right join
	pizzeria p
	on
	m.pizzeria_id = p.id
where
	a.name in ('Denis', 'Anna')
order by
	pizza_name
	,pizzeria_name