SELECT p.name
	,count_of_visits
FROM (SELECT person_id
	  		,COUNT(c.person_id) count_of_visits
      FROM person_visits c
      GROUP BY person_id
      HAVING COUNT(c.person_id) > 3
	 ) vc
LEFT JOIN person p
	ON p.id = vc.person_id
