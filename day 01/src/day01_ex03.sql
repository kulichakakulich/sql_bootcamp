select
	v.visit_date action_date,
	v.person_id
from
	person_visits v
where exists (
	select
		o.order_date action_date,
		o.person_id
	from
		person_order o
	where
		v.visit_date = o.order_date
	and
		v.person_id = o.person_id
)
order by
	action_date,
 	person_id desc