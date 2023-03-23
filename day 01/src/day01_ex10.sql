select
	p.name person_name,
	m.pizza_name,
	a.name pizzeria_name
from
	person p
join
	person_order o
on
	p.id = o.person_id
join
	menu m
on 
	o.menu_id = m.id
join
	pizzeria a
on
	m.pizzeria_id = a.id
order by
	person_name,
	pizza_name,
	pizzeria_name
