-- Task:
-- The company wants to identify active customers.
-- Find all customers who have placed
-- at least one order.
-- Use EXISTS.
-- Return:
-- customer_id,
-- customer_name
select c.customer_id, c.customer_name
from customers c
where exists
(
    select 1
    from orders o
    where c.customer_id = o.customer_id
)
;