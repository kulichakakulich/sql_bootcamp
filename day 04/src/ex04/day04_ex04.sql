create view v_symmetric_union as
    select person_id 
	from (
		 (select * 
		  from person_visits 
		  where visit_date = '2022-01-02'
        except
          select * 
		  from person_visits 
		  where visit_date = '2022-01-06')
        union all
         (select * 
		  from person_visits 
		  where visit_date = '2022-01-06'
        except
          select * 
		  from person_visits 
		  where visit_date = '2022-01-02')
	) person_visits
	order by
		person_id