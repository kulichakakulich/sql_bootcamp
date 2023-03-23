SELECT p.name name
	,m.pizza_name
	,m.price
	,trim_scale(m.price * (1 - c.discount/100)) discount_price
	,a.name pizzeria_name
FROM person_order t
LEFT JOIN person p
	ON p.id = t.person_id
LEFT JOIN menu m
	ON m.id = t.menu_id
LEFT JOIN pizzeria a
	ON a.id = m.pizzeria_id
LEFT JOIN person_discounts c
	ON c.person_id = t.person_id 
	AND c.pizzeria_id = m.pizzeria_id
ORDER BY 
	name
	,pizza_name

