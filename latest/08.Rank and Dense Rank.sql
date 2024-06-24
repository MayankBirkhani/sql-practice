/* Sort the salary in descending order and then start giving them rank from 1
	Using Rank function
*/

use trendytech;

select firstname, lastname, salary, 
row_number() over(order by salary desc) as Salary_Rank 
from employee;


select firstname, lastname, salary, 
rank() over(order by salary desc) as Salary_Rank 
from employee;



/* Sort the salary in descending order and then start giving them rank from 1
	Using Dense Rank function
*/
select firstname, lastname, salary, 
dense_rank() over(order by salary desc) as Salary_Rank 
from employee;

