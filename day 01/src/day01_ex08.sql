select
	order_date,
	concat(p.name, ' (age:', p.age, ')') person_information
from (
	select
		o.order_date,
		o.person_id id
	from
		person_order o
) as order_date
natural join
	person p
order by
	order_date,
	p.name