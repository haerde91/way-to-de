-- Task:
-- The business team wants a customer sales summary.
-- First calculate the total value of each order
-- based on the ordered products.
-- Then calculate customer metrics:
-- - total number of orders,
-- - total amount spent,
-- - average order value.
-- Return only customers whose total spending
-- is greater than the average total spending
-- across all customers.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders,
-- total_spent,
-- avg_order_value
with orders_value as
(
    select oi.order_id,
    sum(oi.quantity*p.price) as total_order
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id
),
customer_metrics as
(
    select c.customer_id,
    c.customer_name,
    count(o.order_id) as total_orders,
    sum(ov.total_order) as total_spent,
    avg(ov.total_order) as avg_order_value
    from customers c
    join orders o
    on c.customer_id = o.customer_id
    join orders_value ov
    on o.order_id = ov.order_id
    group by c.customer_id, c.customer_name
),
avg_orders as
(
    select avg(cm.total_spent) as avg_total_spent
    from customer_metrics cm
)
select cm.customer_id,
cm.customer_name,
cm.total_orders,
cm.total_spent,
cm.avg_order_value
from customer_metrics cm
cross join avg_orders ao
where cm.total_spent > ao.avg_total_spent
order by cm.customer_id
;