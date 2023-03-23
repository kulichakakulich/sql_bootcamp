SET enable_seqscan = off;
-- EXPLAIN ANALYZE

SELECT m.pizza_name
	,p.name pizzeria_name
FROM menu m
	,pizzeria p
WHERE 
	m.pizzeria_id = p.id

