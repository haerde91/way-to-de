-- Task:
-- The company wants to identify its most active customers.
-- First calculate the total number of orders placed by each customer.
-- Then calculate the average number of orders per customer.
-- Return only customers whose number of orders is greater than the average.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders
with customer_orders as
(
    select customer_id, count(*) as total_orders
    from orders 
    group by customer_id
)
select c.customer_id, c.customer_name, co.total_orders
from customer_orders co
join customers c
on co.customer_id = c.customer_id
where co.total_orders >
    (
    select avg(total_orders)
    from customer_orders
    )
;