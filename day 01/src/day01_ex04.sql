select
	o.person_id
from
	person_order o
where 
	o.order_date = '2022-01-07'
except all
select
	v.person_id
from
	person_visits v
where 
	v.visit_date = '2022-01-07'
