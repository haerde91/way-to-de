-- Task:
-- The company wants to display every order
-- together with the total value of all orders.
-- Use a window function.
-- Return:
-- order_id,
-- customer_id,
-- order_value,
-- total_order_value
with orders_value as
(
    select o.order_id,
    o.customer_id,
    sum(oi.quantity*p.price) as order_value
    from orders o
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id
    group by o.order_id, o.customer_id
)
select ov.order_id,
ov.customer_id,
ov.order_value,
sum(ov.order_value) over() as total_sales_value
from orders_value ov

;