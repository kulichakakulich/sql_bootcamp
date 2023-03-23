INSERT INTO person_discounts
SELECT ROW_NUMBER() OVER(ORDER BY person_id, pizzeria_id) id
							,person_order.person_id person_id
								,menu.pizzeria_id pizzeria_id
		,CASE
            WHEN count(menu.pizzeria_id) = 1 THEN 10.5
            WHEN count(menu.pizzeria_id) = 2 THEN 22
            ELSE 30
        END AS discount
FROM person_order 
LEFT JOIN menu
	ON person_order.menu_id = menu.id
GROUP BY 
	person_id
	,menu.pizzeria_id
