with fem as (
    select person_order.id id, person_id, menu_id, pizza_name, order_date, name 
	from person_order
    inner join (select id, pizza_name 
				from menu 
				where pizza_name 
				in ('pepperoni pizza', 'cheese pizza')
			   ) menu
    	on person_order.menu_id = menu.id
    inner join (select id, name 
				from person 
				where gender = 'female'
			   ) person
    	on person_order.person_id = person.id
)
select name
from (select person_id, name, pizza_name 
	  from fem 
	  group by person_id, name, pizza_name
	 ) a
group by person_id, name
having count(name) = 2
order by name



