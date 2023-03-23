WITH all_pizzeria AS (
    SELECT p.person_id
	, p.menu_id
	, c.gender
	, z.name pizzeria_name
    FROM person_order p
    LEFT JOIN person c
		ON p.person_id = c.id
    LEFT JOIN menu m
		ON p.menu_id = m.id
    LEFT JOIN pizzeria z 
		ON m.pizzeria_id = z.id
)
(SELECT pizzeria_name 
 FROM all_pizzeria
EXCEPT
SELECT pizzeria_name 
 FROM all_pizzeria
 WHERE gender = 'male')
UNION DISTINCT
(SELECT pizzeria_name 
 FROM all_pizzeria
EXCEPT
SELECT pizzeria_name 
 FROM all_pizzeria
 WHERE gender = 'female')
ORDER BY 
	pizzeria_name

