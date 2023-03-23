SELECT pizzeria.name
	,SUM(m.count) count_of_orders
	,trim_scale(ROUND(SUM(menu.price * count) / SUM(m.count), 2)) average_price
	,MAX(menu.price) max_price
	,MIN(menu.price) min_price
FROM (SELECT menu_id
	  		,COUNT(menu_id) count
      FROM person_order
      GROUP BY menu_id
	 ) m
INNER JOIN menu 
	ON menu.id = m.menu_id
INNER JOIN pizzeria 
	ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name
ORDER BY name ASC


