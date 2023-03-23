WITH p1 AS (
    SELECT * 
	FROM menu m 
	LEFT JOIN (
		SELECT id, name 
		FROM pizzeria 
	) AS p 
		ON m.pizzeria_id = p.id
)
SELECT p1.pizza_name pizza_name
		,p1.name pizzeria_name_1
		,p2.name pizzeria_name_2
		,p1.price
FROM p1
INNER JOIN p1 p2
	ON p1.pizza_name = p2.pizza_name 
	AND p1.price = p2.price 
	AND p1.name != p2.name 
	AND p1.pizzeria_id > p2.pizzeria_id
ORDER BY 
	pizza_name



