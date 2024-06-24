-- Write a query to find no of gold medal per swimmer for swimmer who won only gold medal

use namastesql;
select * from events;

select gold as swimmer, count(*) as no_of_medals
from events
where gold not in (select silver from events union all select bronze from events) 
group by gold;
