/* 
Find the room types that are searched most no of times.Output the room type alongside the no of searches for it.
If the filter for room types has more than one room type, consider each unique room type as a seperate row.
Sort the result based on the no of searches in descending order.
*/

Select * from airbnb_searches;


-- SQL Server solution:-
select value as room_type, count(1) as no_of_searches from airbnb_searches
CROSS APPLY split_string(filter_room_types,',')
GROUP BY value
order by no_of_searches desc;



-- Mysql 
with cte as(
select sum(case when filter_room_types like '%entire%' then 1 else 0 end) as en,
sum(case when filter_room_types like '%private%' then 1 else 0 end) as pr,
sum(case when filter_room_types like '%shared%' then 1 else 0 end) as sh
from airbnb_searches
)
select 'private room' as room_type, pr from cte as val
union all
select 'entire home' as room_type, en from cte as val
union all
select 'shared room' as room_type, sh from cte as val;


