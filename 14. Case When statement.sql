use namastesql;
Select * from emp;

/*Bucket the employees on the basis of their age*/

select *,
case
	when emp_age < 20 then 'Kids'
    when emp_age >= 20 and emp_age <= 40 then 'Adult'
    when emp_age > 40 then 'Old'
end as emp_age_bucket
from emp
order by emp_age;    



/*Calculate the new salary based on the department an employee belongs*/
select * from emp;
select * from department;


select emp_name, salary, department.dept_name,
case
	when department.dept_name = 'Analytics' then salary + 0.5 * salary
    when department.dept_name = 'IT' then salary + 0.2 * salary
END as new_salary
from emp 
Inner join department on emp.department_id = department.dept_id;