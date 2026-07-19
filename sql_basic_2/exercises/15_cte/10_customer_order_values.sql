-- Task:
-- The finance team wants to analyze customer spending.
-- First calculate the total value of each order.
-- Then calculate the total spending for each customer
-- based on those order totals.
-- Return:
-- customer_id,
-- customer_name,
-- total_spent
with value_of_orders as
(
    select oi.order_id,
    sum(oi.quantity*p.price) as total_order
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id
)
select c.customer_id,
c.customer_name,
sum(vo.total_order) as total_spent
from value_of_orders vo
join orders o
on vo.order_id = o.order_id
join customers c
on o.customer_id = c.customer_id
group by c.customer_id, c.customer_name
order by c.customer_id;