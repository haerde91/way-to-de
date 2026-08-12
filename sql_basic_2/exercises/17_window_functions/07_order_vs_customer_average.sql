-- Task:
-- The company wants to display every order
-- together with the average order value
-- for the customer who placed that order.
-- Additionally, show the difference between
-- the order value and the customer's average order value.
-- Return:
-- order_id,
-- customer_id,
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
customers_avg_orders as
(
    select o.order_id,
    o.customer_id,
    ov.order_value,
    avg(ov.order_value) over (partition by o.customer_id) as customer_average_order_value
    from orders o
    join orders_values ov
    on o.order_id = ov.order_id
)
select cao.order_id,
cao.customer_id,
cao.order_value,
cao.customer_average_order_value,
(cao.order_value - cao.customer_average_order_value) as difference_from_customer_average
from  customers_avg_orders cao
;


