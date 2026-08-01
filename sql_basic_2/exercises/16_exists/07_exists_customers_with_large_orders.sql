-- Task:
-- The company wants to identify customers
-- who have placed at least one order
-- containing more than 3 different products.
-- Use EXISTS.
-- Return:
-- customer_id,
-- customer_name
select c.customer_id,
c.customer_name
from customers c
where exists
(
    select 1
    from orders o
    join order_items oi
    on o.order_id = oi.order_id
    where c.customer_id = o.customer_id
    group by o.order_id
    having count(distinct oi.product_id) > 3
);