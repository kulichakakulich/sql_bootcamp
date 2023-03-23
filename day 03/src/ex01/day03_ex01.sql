select
	m.id menu_id
from
	menu m
except
select
	p.menu_id
from
	person_order p
order by
	menu_id