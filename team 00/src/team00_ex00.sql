create table nodes
(
    point1 varchar not null,
    point2 varchar not null,
    cost integer not null
);

insert into nodes values('a', 'b', 10);
insert into nodes values('b', 'a', 10);

insert into nodes values('a', 'c', 15);
insert into nodes values('c', 'a', 15);

insert into nodes values('a', 'd', 20);
insert into nodes values('d', 'a', 20);

insert into nodes values('b', 'c', 35);
insert into nodes values('c', 'b', 35);

insert into nodes values('b', 'd', 25);
insert into nodes values('d', 'b', 25);

insert into nodes values('c', 'd', 30);
insert into nodes values('d', 'c', 30);

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
where point2 = 'a' 
and summ in (
	select
		min(summ)
		tour
	from
		short_route
	where length(tour) = 7
)
order by
	total_cost
	,tour

