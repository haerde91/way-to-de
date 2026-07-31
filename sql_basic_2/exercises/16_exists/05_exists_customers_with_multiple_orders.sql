-- Task:
-- The company wants to identify customers
-- who have placed more than one order.
-- Use EXISTS.
-- Return:
-- customer_id,
-- customer_name
with vip_customers as
(
    select o.customer_id,
    count (*) as number_orders
    from orders o
    group by o.customer_id
    having count (*) > 1
)
select c.customer_id,
c.customer_name
from customers c
where exists 
(
    select 1
    from vip_customers vc
    where c.customer_id = vc.customer_id
);