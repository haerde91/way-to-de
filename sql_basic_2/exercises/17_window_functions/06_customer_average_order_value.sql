-- Task:
-- The company wants to display every order
-- together with the average order value
-- for the customer who placed that order.
-- Return:
-- order_id,
-- customer_id,
-- order_value,
-- customer_average_order_value

with orders_values as
(
    select oi.order_id,
    sum(oi.quantity*p.price) as order_value
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id
)
select ov.order_id,
o.customer_id,
ov.order_value,
avg(ov.order_value) over(partition by o.customer_id) as customer_average_order_value
from orders_values ov
join orders o
on ov.order_id = o.order_id
;