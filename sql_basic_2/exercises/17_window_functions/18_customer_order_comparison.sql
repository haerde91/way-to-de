-- Task:
-- The company wants to compare every order
-- with the previous order placed by the same customer.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- previous_order_value,
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
    lag(ov.order_value) over (
        partition by o.customer_id
        order by o.order_date,
        ov.order_id
    ) as previous_order_value
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 

)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.previous_order_value,
(caom.order_value - caom.previous_order_value) as difference_from_previous_order
from customers_and_orders_metrics caom
;