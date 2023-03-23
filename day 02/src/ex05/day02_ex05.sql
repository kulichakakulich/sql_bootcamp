with FemOld as (
	select
		c.name
	from
		person c
	where
		c.gender = 'female'
	and
		c.age > 25
	order by
		name
)
select *
from
	FemOld
	