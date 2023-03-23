SELECT person.address
	,pizzeria.name
	,COUNT(menu.pizzeria_id) count_of_orders
FROM person_order
RIGHT JOIN menu 
	ON menu.id = person_order.menu_id
RIGHT JOIN pizzeria 
	ON pizzeria.id = menu.pizzeria_id
RIGHT JOIN person 
	ON person.id = person_order.person_id
GROUP BY 
	person.address
	,pizzeria.name
ORDER BY 
	person.address
	,pizzeria.name

