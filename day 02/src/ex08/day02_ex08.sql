with MskSam as (
    select person_id, menu_id, order_date, name
    from person_order
    inner join (select id, name 
				from person 
				where address 
				in ('Moscow', 'Samara') and gender = 'male'
			   ) as person
    	on person_order.person_id = person.id
),
PepMush as (
    select person_id, menu_id, order_date, name
    from MskSam
    inner join (select id 
				from menu 
				where pizza_name 
				in('pepperoni pizza', 'mushroom pizza')
			   ) as menu
    	ON menu.id = MskSam.menu_id
)
select name 
from PepMush
order by name desc;


