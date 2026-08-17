-- Task:
-- The company wants to identify orders that were
-- significantly larger than the customer's typical order.
-- For every order, show:
-- - the order value
-- - the customer's average order value
-- - how much higher or lower the order value is
--   compared with the customer's average
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_average_order_value,
-- difference_from_customer_average

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
    avg(ov.order_value) over (
        partition by o.customer_id
    ) as customer_average_order_value
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 
)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_average_order_value,
(caom.order_value-caom.customer_average_order_value) as difference_from_customer_average
from customers_and_orders_metrics caom
;