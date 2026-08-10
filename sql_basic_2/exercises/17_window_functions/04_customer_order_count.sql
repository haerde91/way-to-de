-- Task:
-- The company wants to display every order
-- together with the total number of orders
-- placed by the same customer.
-- Return:
-- order_id,
-- customer_id,
-- order_value,
-- customer_order_count
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
count(ov.order_id) over (partition by o.customer_id) as customer_order_count
from orders_values ov
join orders o
on ov.order_id = o.order_id