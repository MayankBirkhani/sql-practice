/* Sort the salary in descending order and then start giving them rank from 1*/
use trendytech;

select firstname, lastname, salary, 
row_number() over(order by salary desc) as Salary_Rank 
from employee;



/* Find the 5th highest salary */
select * from
(
select firstname, lastname, salary, 
row_number() over (order by salary desc) as Salary_Rank 
from employee
)
temptable where Salary_Rank=5;



/* Assign row number for partitions based on each location */

select firstname, lastname, salary, location, 
row_number() over (partition by location order by salary desc) AS loc_count
from employee; 


/* Find the highest salary getter at each location */

SELECT * FROM 
(select firstname, lastname, salary, location, 
row_number() over (partition by location order by salary desc) AS loc_count
from employee) temptable where loc_count = 1;

