/* I want to find out Premium customers who places more orders than the average number of orders.
step 1:- Find out how many orders each customer has placed
step 2:- Calculate the average number of orders
*/

Use trendytech;

/* Finding Average number of orders placed by each customer USING SUBQUERY */
select avg(total_orders_per_customer) as avg_orders_per_customer from(
SELECT order_customer_id, count(*) as total_orders_per_customer FROM orders group by order_customer_id) x ;



/* Finding Average number of orders placed by each customer using CTE/with clause */
with total_orders(order_customer_id,total_orders_per_customer) as
(
select order_customer_id, count(*) as total_orders_per_customer 
FROM orders 
group by order_customer_id
)
SELECT AVG(total_orders_per_customer) as avg_orders_per_customer FROM total_orders;


/*Finding Premium customers using subquery */
SELECT * from
(select order_customer_id, count(*) as total_orders_per_customer FROM orders group by order_customer_id) total_orders 
JOIN
(SELECT AVG(total_orders_per_customer) as avg_orders_per_customer FROM(
select order_customer_id, count(*) as total_orders_per_customer FROM orders group by order_customer_id) x)average_orders
ON
total_orders.total_orders_per_customer > average_orders.avg_orders_per_customer;


/*Finding Premium customers using CTE 
 3 Step Process:-
 step 1. Calculate total orders per customer
 step 2. Calculate average number of number of orders for the customers
 step 3. Get to know the customers who are premium
*/

with total_orders(order_customer_id,total_orders_per_customer) as
(
select order_customer_id, count(*) as total_orders_per_customer 
FROM orders 
group by order_customer_id
),
average_orders(avg_orders_per_customer) as
(
SELECT AVG(total_orders_per_customer) as avg_orders_per_customer FROM total_orders
)
select * from total_orders JOIN average_orders ON
total_orders.total_orders_per_customer > average_orders.avg_orders_per_customer;












