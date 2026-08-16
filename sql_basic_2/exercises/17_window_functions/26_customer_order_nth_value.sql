-- Task:
-- The company wants to compare each customer's orders
-- with the value of their second-highest order.
-- For every order, display the value of the customer's
-- second-highest order alongside the current order.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_second_highest_order_value

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
    nth_value(ov.order_value, 2) over (
        partition by o.customer_id
        order by ov.order_value desc
        rows between unbounded preceding and unbounded following
    ) as customer_second_highest_order_value
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 

)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_second_highest_order_value
from customers_and_orders_metrics caom
;