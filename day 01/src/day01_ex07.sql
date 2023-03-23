select
	o.order_date,
	concat(p.name, ' (age:', p.age, ')') person_information
from
	person_order o
join
	person p
on
	p.id = o.person_id
order by
	o.order_date,
	p.name
