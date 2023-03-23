select
	p.id person_id,
	p.name person_name,
	p.age,
	p.gender,
	p.address,
	a.id pizzeria_id,
	a.name,
	a.rating
from
	person p
join 
	person_visits c
on
	p.id = c.person_id
join 
	pizzeria a
on
	a.id = c.pizzeria_id
order by
	p.id,
	a.id