SELECT p.name
FROM (SELECT DISTINCT person_id 
	  FROM person_order) c
LEFT JOIN person p 
	ON p.id = c.person_id
ORDER BY 
	name ASC

