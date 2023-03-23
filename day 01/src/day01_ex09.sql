select
	p.name
from
	pizzeria p
where p.id in (
	select
		v.pizzeria_id
	from
		person_visits v
);
select
	p.name
from
	pizzeria p
where exists (
	select
		v.pizzeria_id
	from
		person_visits v
	where
		v.pizzeria_id = p.id
)
