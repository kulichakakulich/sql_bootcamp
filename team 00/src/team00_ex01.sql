with recursive short_route as (
	(select
		point1 tour
		,point1
		,point2
		,cost
		,cost summ
	from
		nodes 
	where
		point1 = 'a')
	union all
	(select
		old.tour || ',' || new.point1
		,new.point1
		,new.point2
		,new.cost
		,old.summ + new.cost summ
	from
		nodes new
	inner join
		short_route old
		on new.point1 = old.point2
	where tour not like '%' || new.point1 || '%')
)

select
	summ total_cost
	,'{' || tour || ',' || point2 || '}' tour 
from short_route
where point2 = 'a' and length(tour) = 7
order by
	total_cost
	,tour

