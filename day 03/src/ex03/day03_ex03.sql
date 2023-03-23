with all_pizzeria as (
    SELECT p.person_id
	,p.pizzeria_id
	,a.gender
	,c.name pizzeria_name
    FROM person_visits p
    LEFT JOIN person a 
		ON p.person_id = a.id
    LEFT JOIN pizzeria c
		ON p.pizzeria_id = c.id
)
(SELECT pizzeria_name 
 FROM all_pizzeria 
 WHERE gender = 'male'
EXCEPT ALL
SELECT pizzeria_name 
 FROM all_pizzeria 
 WHERE gender = 'female')
UNION ALL (
SELECT pizzeria_name 
 FROM all_pizzeria 
 WHERE gender = 'female'
EXCEPT ALL
SELECT pizzeria_name 
 FROM all_pizzeria 
 WHERE gender = 'male')
ORDER BY 
	pizzeria_name

