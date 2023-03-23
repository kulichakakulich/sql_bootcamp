create view v_generated_dates as
select
	generated_date::date
from 
	generate_series(timestamp '2022-01-01'
            		,timestamp '2022-01-31'
            		,'1 day'::interval
				   ) as generated_date
