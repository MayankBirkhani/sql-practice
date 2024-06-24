/* List Firstname, Lastname and Find how many people are from each location and avg salary at each location  */

-- select * from employee;
use trendytech;

select firstname, lastname , location,
count(location) OVER (partition by LOCATION) AS total ,
avg(salary) OVER (partition by LOCATION) AS Average
from employee;
