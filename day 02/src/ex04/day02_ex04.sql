select
	a.pizza_name
	,p.name pizzeria_name
	,a.price
from (
	select
		c.pizza_name
		,c.price
		,c.pizzeria_id
	from
		menu c
	where
		c.pizza_name
			between
			'mushroom pizza' and 'pepperoni pizza'
) a
join
	pizzeria p
	on
	a.pizzeria_id = p.id
order by
	pizza_name
	,pizzeria_name
