-- Task:
-- The company wants to identify customers who place more orders than the average customer.
-- Build the solution using TWO CTEs.
-- First calculate the total number of orders placed by each customer.
-- Then calculate the average number of orders using the first CTE.
-- Finally return customers whose number of orders is greater than the average.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders
with customer_orders as
(
    select o.customer_id, count(*) as total_orders
    from orders o
    group by o.customer_id
),
avg_orders as
(
    select avg(co.total_orders) as avg_total_orders
    from customer_orders co
)  
select c.customer_id, c.customer_name, co.total_orders
from customers c
join customer_orders  co
on c.customer_id = co.customer_id
cross join avg_orders ao
where co.total_orders > ao.avg_total_orders
