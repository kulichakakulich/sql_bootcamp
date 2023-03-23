(SELECT pizzeria.name
 		,vc.count
 		,'visit' action_type
FROM (SELECT pizzeria_id
	  		,COUNT(pizzeria_id) count
      FROM person_visits
      GROUP BY pizzeria_id
	 ) vc
INNER JOIN pizzeria 
 	ON pizzeria.id = vc.pizzeria_id
ORDER BY 
 	count DESC
LIMIT 3)
UNION ALL
(SELECT pizzeria.name
 		,oc.count
 		,'order' action_type
FROM(SELECT pizzeria_id
	 		,COUNT(pizzeria_id) count
     FROM person_order 
	 LEFT JOIN menu 
	 	ON menu.id = person_order.menu_id
     GROUP BY pizzeria_id
	) oc
INNER JOIN pizzeria 
 	ON pizzeria.id = oc.pizzeria_id
ORDER BY 
 	count DESC
LIMIT 3)
ORDER BY 
	action_type ASC
	,count DESC
