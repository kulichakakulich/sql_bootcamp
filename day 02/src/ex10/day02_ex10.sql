with p1 as (
    select id, name, address 
	from person
    order by address, name
),
p2 as (
    select id, name, address 
	from person
    order by address, name
)
select 
	p1.name person_name1
	,p2.name person_name2
	,p1.address common_address 
from p2
inner join p1
	on 
	p1.id > p2.id and p1.address = p2.address
order by 
	person_name1
	,person_name2
	,common_address



