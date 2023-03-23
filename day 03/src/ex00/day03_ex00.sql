select
	m.pizza_name
	,m.price
	,p.name pizzeria_name
	,a.visit_date
from
	menu m
inner join person_visits a
	on
	a.pizzeria_id = m.pizzeria_id
inner join person c
	on
	c.id = a.person_id
inner join pizzeria p
	on
	p.id = m.pizzeria_id
where
	c.name = 'Kate'
	and
	m.price between 800 and 1000
order by
	pizza_name
	,price
	,pizzeria_name
	