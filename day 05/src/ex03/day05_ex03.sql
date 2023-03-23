CREATE INDEX idx_person_order_multi
	ON person_order 
		USING btree(person_id, menu_id);

SET enable_seqscan  = off;
EXPLAIN ANALYSE

SELECT p.person_id
		,p.menu_id
		,p.order_date
FROM person_order p
WHERE 
	person_id = 8 AND menu_id = 19


