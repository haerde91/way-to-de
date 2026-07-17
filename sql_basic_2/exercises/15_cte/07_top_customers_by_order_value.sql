-- Task:
-- The sales manager wants to identify the company's best customers.
-- Return customers whose total spending is higher than
-- the average spending of customers who placed at least 2 orders.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders,
-- total_spent
with customers_metrics as
(
    select o.customer_id, 
    count(*) as total_orders,
    sum(o.amount) as total_spent
    from orders o
    group by o.customer_id
),
total_spent_avg as
(
    select avg(cm.total_spent) as total_avg
    from customers_metrics cm
    where cm.total_orders >= 2
)
select c.customer_id, 
c.customer_name, 
cm.total_orders,
cm.total_spent
from customers c
join customers_metrics cm
on c.customer_id = cm.customer_id
cross join total_spent_avg tsa
where cm.total_spent > tsa.total_avg
;