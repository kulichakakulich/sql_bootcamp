CREATE INDEX idx_person_name 
	ON person 
		USING btree(UPPER(name));

SET enable_seqscan  = off;
EXPLAIN ANALYSE

SELECT p.name 
FROM person p
ORDER BY 
	UPPER(name)


