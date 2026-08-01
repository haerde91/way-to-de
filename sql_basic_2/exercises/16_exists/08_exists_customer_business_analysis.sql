-- Task:
-- The company wants to identify valuable customers.
-- A valuable customer is a customer who:
-- - has placed at least one order,
-- - has bought at least two different products,
-- - and has spent more than 500 in total.
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
    join products p 
    on oi.product_id = p.product_id
    where c.customer_id = o.customer_id
    group by o.customer_id
    having count(distinct oi.product_id) >= 2
    and sum(oi.quantity*p.price) > 500
);