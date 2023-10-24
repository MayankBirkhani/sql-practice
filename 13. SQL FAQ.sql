/* SQL Tips and Tricks playlist */

use namastesql;
Select * from emp;

/* Q1-> How to find duplicates in a given table*/
Select emp_id, count(1) as emp_count from emp group by emp_id having emp_count > 1 ;


/* Q2-> How to delete duplicates
Note:-  MySQL does not support updatable CTEs
*/ 
with cte as(select *, row_number() over(partition by emp_id order by emp_id) as rn from emp)
delete from cte where rn > 1;



/* Q3-> Diff btw Union & Union All*/
select manager_id from emp
Union
select manager_id from emp1;

select manager_id from emp
Union All
select manager_id from emp1;

/* Q4-> Diff btw rank, row_number & dense_rank*/



/* Q5-> Employee who are not presnt in Department table*/

 /*Solved using Subquery*/
select * from emp where department_id NOT IN ("select dept_id from department");

 /*Solved using Left Join*/
 select emp.*, department.dept_id, department.dept_name from emp
 left join department ON emp.department_id = department.dept_id
 where department.dept_id is Null;


/* Q6-> Second highhest Salary in each Dep*/
select * from (select emp.*, dense_rank() over(partition by department_id order by salary)as rn from emp) a
where rn = 2;



/* Q7-> Find all transaction done by Shilpa */
select  * from orders where customer_name = "Shilpa";


/* Q8-> Self Join, Manager Salary > Emp salary*/




/* Q9-> Joins Left, Inner join*/




/* Q10-> Update query to Swap gender */
select * from orders;

update orders set customer_gender = 
case 
when customer_gender ='Male' then 'Female'
when customer_gender ='Female' then 'Male'
end;


