CREATE UNIQUE INDEX idx_person_order_order_date
	ON person_order 
		USING btree(person_id, menu_id)
	WHERE order_date = '2022-01-01';

SET enable_seqscan = off;
EXPLAIN ANALYSE

SELECT p.person_id
		,p.menu_id
FROM person_order p
WHERE order_date = '2022-01-01'
ORDER BY 
	person_id
	,menu_id


