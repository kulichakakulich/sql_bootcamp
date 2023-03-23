select
	p.name
	,p.rating
from
	pizzeria p
left join
	person_visits t
on
	p.id = t.pizzeria_id
where
	t.pizzeria_id is NULL

	