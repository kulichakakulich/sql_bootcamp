select distinct k.name name
from (select person_id
	  		,pizzeria_id
	  		,visit_date 
	  from person_visits 
	  where visit_date = '2022-01-08'
	) p
inner join (select id, name 
			from person 
			where name = 'Dmitriy'
		   ) a
	on
	a.id = p.person_id
inner join menu m
	on 
	m.pizzeria_id = p.pizzeria_id
inner join pizzeria k
	on 
	k.id = m.pizzeria_id
inner join person_order c
	on 
	c.menu_id = m.id;

