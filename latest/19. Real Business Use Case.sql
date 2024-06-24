/* Write a sql to find business day between create date and resolved date by excluding weekends and public holidays 

2023-08-01 -> Monday		2023-08-03 -> Wednesday
2023-08-01 -> Monday		2023-08-12 -> Friday
2023-08-01 -> Monday		2023-08-16 -> Tuesday

*/


select * from tickets;
select * from holidays;

-- This will not run in Mysql as datediff only accepts 2 parameters here.


select *
,datediff(day,create_date,resolved_date) as actual_days
,datediff(day,create_date,resolved_date) - 2*datediff(week,create_date,resolved_date)
- no_of_holidays as business_days
from
(select ticket_id, create_date, resolved_date,count(holiday_date) as no_of_holidays
from tickets
left join holidays on holiday_date between create_date AND resolved_date
group by ticket_id, create_date, resolved_date)A
;






