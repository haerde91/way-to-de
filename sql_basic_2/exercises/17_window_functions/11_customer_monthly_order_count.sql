-- Task:
-- The company wants to display every order
-- together with the number of orders
-- placed by the same customer before or on that order
-- within the same month.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_monthly_order_count
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
    count(o.order_id) over (
        partition by o.customer_id,
        date_trunc ('month', o.order_date)
        order by o.order_date,
        o.order_id
    ) as customer_monthly_order_count
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 
)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_monthly_order_count
from customers_and_orders_metrics caom
;