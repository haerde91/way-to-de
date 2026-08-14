-- Task:
-- The company wants to assign a dense rank
-- to every order based on its value within each customer.
-- The highest-value order should receive rank 1.
-- Orders with the same value should receive the same rank.
-- Ranking should not contain gaps after ties.
-- Return:
-- order_id,
-- customer_id,
-- order_date,
-- order_value,
-- customer_order_dense_rank
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
    dense_rank() over (
        partition by o.customer_id
        order by ov.order_value desc
    ) as customer_order_dense_rank
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 
)
select caom.order_id,
caom.customer_id,
caom.order_date,
caom.order_value,
caom.customer_order_dense_rank
from customers_and_orders_metrics caom
;