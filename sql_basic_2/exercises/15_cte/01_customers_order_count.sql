-- Task:
-- The company wants to prepare a customer activity report.
-- First calculate the number of orders placed by each customer.
-- Then return only customers who placed at least 2 orders.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders
with customer_orders as
(
    select customer_id, count(order_id) as total_orders
    from orders
    group by customer_id
)
select c.customer_id, c.customer_name, co.total_orders
from customer_orders co
join customers c
on co.customer_id = c.customer_id
where co.total_orders >= 2;