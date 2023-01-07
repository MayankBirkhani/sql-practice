/* Sort the salary in descending order and then start giving them rank from 1
	Using Rank function
*/

select firstname, lastname, salary, 
rank() over(order by salary desc) as Salary_Rank 
from employee;



/* Sort the salary in descending order and then start giving them rank from 1
	Using Dense Rank function
*/
select firstname, lastname, salary, 
dense_rank() over(order by salary desc) as Salary_Rank 
from employee;

