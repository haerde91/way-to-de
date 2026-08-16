-- Task:
-- The company wants to identify the most valuable orders
-- for each customer and compare each order with the
-- customer's previous order.
-- For every order, calculate:
-- - the order's rank among the customer's orders based on order value
-- - the difference between the current order value
--   and the previous order value
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_order_rank,
-- difference_from_previous_order
with orders_values as
(
    select oi.order_id,
    sum(oi.quantity*p.price) as order_value
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id
),
customers_and_orders_metrics as
(
    select ov.order_id,
    o.customer_id,
    o.order_date,
    ov.order_value,
    row_number() over (
        partition by o.customer_id
        order by ov.order_value desc
    ) as customer_order_rank,
    lag(ov.order_value) over (
        partition by o.customer_id
        order by o.order_date
    ) as customer_previous_order_value
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 

)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_order_rank,
(caom.order_value - caom.customer_previous_order_value) as difference_from_previous_order
from customers_and_orders_metrics caom
;