-- Task:
-- The company wants to divide each customer's orders
-- into 3 groups based on order value.
-- The highest-value orders should be placed in group 1.
-- The lowest-value orders should be placed in the highest-numbered group.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_order_group

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
    ntile(3) over (
        partition by o.customer_id
        order by ov.order_value desc
    ) as customer_order_group
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 

)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_order_group
from customers_and_orders_metrics caom
;