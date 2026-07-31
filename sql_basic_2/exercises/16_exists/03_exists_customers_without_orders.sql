-- Task:
-- The company wants to identify customers
-- who have never placed an order.
-- Use EXISTS or NOT EXISTS.
-- Return:
-- customer_id,
-- customer_name

select c.customer_id,
c.customer_name
from customers c
where not exists
(
    select 1
    from orders o
    where c.customer_id = o.customer_id
);

