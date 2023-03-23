SELECT COALESCE(orderd.name, visit.name) name
	, (COALESCE(visit.count, 0) + COALESCE(orderd.count, 0)) total_count
FROM (SELECT pizzeria.name
	  		,vc.count, 'visit' action_type
      FROM (SELECT pizzeria_id
					,COUNT(pizzeria_id) count
            FROM person_visits
            GROUP BY pizzeria_id
		   ) vc
      INNER JOIN pizzeria 
		  ON pizzeria.id = vc.pizzeria_id
	 ) visit
FULL JOIN
    (SELECT pizzeria.name
	 		,oc.count, 'order' action_type
    FROM(SELECT pizzeria_id
		 		,COUNT(pizzeria_id) count
         FROM person_order 
		 LEFT JOIN menu 
		 	ON menu.id = person_order.menu_id
         GROUP BY pizzeria_id
		) oc
    INNER JOIN pizzeria
	 	ON pizzeria.id = oc.pizzeria_id
	) orderd
ON orderd.name = visit.name
ORDER BY 
	total_count DESC
	,name ASC

