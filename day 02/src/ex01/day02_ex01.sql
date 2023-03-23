select distinct
	p.visit_date missing_date
from (
	select
		a.visit_date 
	from 
		person_visits a
    where 
		a.visit_date 
			between 
			'2022-01-01' and '2022-01-10'
    and 
		a.person_id 
			between 
			1 and 2
) c
right join
	person_visits p
	on 
	c.visit_date = p.visit_date
where 
	c.visit_date is NULL
order by
	p.visit_date;
