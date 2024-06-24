# Questions 1. Make the pair of each adult with child for going to the ride.
#select * from family;


with 
cte_adult as (select *, row_number() over(order by person) as rn from family where type = 'Adult'),
cte_child as (select *, row_number() over(order by person) as rn from family where type = 'Child' )
select a.person,c.person from cte_adult a left join cte_child c on a.rn = c.rn;


########################################################################################################

# Questions 2 Find the origin and destination for each flight

select * from flights;

select o.cid, o.origin, d.destination as final_destination 
from flights o inner join flights d on o.destination = d.origin;


########################################################################################################

# Question 3 Find the count of new customer added per month

select * from sales;

select order_date, count(distinct customer) as new_cust_cnt from(
select *, row_number() over(partition by customer order by order_date) as rn from sales) a
where rn =1
group by order_date
;











