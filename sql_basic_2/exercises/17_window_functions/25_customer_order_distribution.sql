-- Task:
-- The company wants to analyze how each customer's
-- order value compares with the other orders of the same customer.
-- For each order, calculate:
-- - the relative rank of the order value within the customer
-- - the cumulative distribution of the order value within the customer
-- The highest-value orders should have the highest position
-- in the ordering.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_percent_rank,
-- customer_cume_dist

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
    percent_rank() over (
        partition by o.customer_id
        order by ov.order_value desc
    ) as customer_percent_rank,
    cume_dist() over (
        partition by o.customer_id
        order by ov.order_value desc
    ) as customer_cume_dist
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 

)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_percent_rank,
caom.customer_cume_dist
from customers_and_orders_metrics caom
;