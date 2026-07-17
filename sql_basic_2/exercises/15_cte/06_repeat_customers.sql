-- Task:
-- The company wants to identify loyal customers.
-- Return customers who placed more than one order
-- and spent more than the average total spending
-- across all customers.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders,
-- total_spent
with customer_total_orders_and_spent as
(
    select o.customer_id, 
    count(*) as total_orders, 
    sum(o.amount) as total_spent
    from orders o
    group by o.customer_id
),
total_spent_avg as
(
    select avg(tos.total_spent) as total_avg
    from customer_total_orders_and_spent tos
)
select c.customer_id, 
c.customer_name, 
tos.total_orders,
tos.total_spent
from customers c
join customer_total_orders_and_spent tos
on c.customer_id = tos.customer_id
cross join total_spent_avg tsa
where tos.total_orders > 1 
and tos.total_spent > tsa.total_avg

;