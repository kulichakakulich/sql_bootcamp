with temp as (
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
)

select 
	menu.pizza_name 
	,menu.price 
	,pizzeria.name as pizzeria_name
from 
	temp
left join menu 
	on temp.menu_id = menu.id
left join pizzeria 
	on menu.pizzeria_id = pizzeria.id
order by 
	pizza_name
	,price
