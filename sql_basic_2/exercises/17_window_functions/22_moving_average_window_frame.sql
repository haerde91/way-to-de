-- Task:
-- The company wants to display every order
-- together with the average order value of the current
-- and the two previous orders placed by the same customer.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_three_order_moving_average
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
        order by o.order_date,
        ov.order_id
        rows between 2 preceding and current row -- frame
    ) as customer_three_order_moving_average
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 

)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_three_order_moving_average
from customers_and_orders_metrics caom
;