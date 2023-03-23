CREATE UNIQUE INDEX idx_menu_unique 
	ON menu 
		USING btree(pizzeria_id, pizza_name);

SET enable_seqscan = off;
EXPLAIN ANALYSE

SELECT m.pizzeria_id
	,m.pizza_name
FROM menu m
ORDER BY 
	pizzeria_id
	,pizza_name



