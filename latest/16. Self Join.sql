/* Find employees with salary more than there managers salary*/

select * from emp;

select e.emp_id, e.emp_name, e.salary, m.emp_name as manager_name, m.salary as manger_salary
from emp e 
Inner Join emp m On e.manager_id = m.emp_id
where e.salary > m.salary;