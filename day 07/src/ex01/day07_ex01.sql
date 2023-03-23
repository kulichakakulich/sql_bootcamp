SELECT p.name
		,c.count_of_visits
FROM (SELECT person_id
	  		,COUNT(person_id) count_of_visits
      FROM person_visits
      GROUP BY person_id
	 ) c
LEFT JOIN person p
	ON p.id = c.person_id
ORDER BY 
	count_of_visits DESC
	,name ASC
LIMIT 4
