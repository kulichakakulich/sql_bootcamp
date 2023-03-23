SELECT 
	m.id object_id,
	m.pizza_name object_name 
FROM 
	menu m 
UNION 
SELECT 
	p.id, name
FROM 
	person p 
ORDER BY 
	object_id, object_name
