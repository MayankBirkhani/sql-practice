-- Write a sql query to find the total number of employee present in the hospital

/* This solution will not work in Mysql */

select * from hospital;


-- solution 1

with cte as(
select emp_id
, max(case when action='in' then time end) as intime
, max(case when action= 'out' then time end) as outtime
from hospital
group by emp_id
having intime > outtime or outtime is null
)
select emp_id as employee_present from cte;



-- solution 2
with intime as(
select emp_id, max(time) as latest_intime
from hospital
where action='in'
group by emp_id
),
outtime as(
select emp_id, max(time) as latest_outtime
from hospital
where action='out'
group by emp_id
)
select * from intime left join outtime 
on intime.emp_id = outtime.emp_id
where latest_intime > latest_outtime or latest_outtime is null;






