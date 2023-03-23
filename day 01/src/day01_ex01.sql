(
SELECT 
	p.name object_name 
FROM 
	person p
ORDER BY 
	p.name
)
UNION ALL(
SELECT 
	m.pizza_name object_name
FROM 
	menu m
ORDER BY 
	m.pizza_name
)
