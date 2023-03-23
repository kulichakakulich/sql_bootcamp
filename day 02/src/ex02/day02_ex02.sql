select 
	coalesce(person_name, NULL, '-') person_name
	,visit_date
	,coalesce(NULL, name, '-') pizzeria_name
from (
	select 
		c.person_id
		,pizzeria_id
		,visit_date
		,name person_name
    from (
		select *
		from 
			person_visits
		where 
			visit_date 
			between 
			'2022-01-01' and '2022-01-03'
	) c
full join 
	person a
    ON 
	a.id =  c.person_id
) p
full join 
	pizzeria t
	on 
	t.id =  p.pizzeria_id
order by 
	person_name
	,visit_date
	,pizzeria_name;

