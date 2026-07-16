-- Task:
-- The company wants to identify its highest-value customers.
-- Build the solution using TWO CTEs.
-- First calculate the total amount spent by each customer.
-- Then calculate the average amount spent across all customers.
-- Finally return customers whose total spending is greater than the average.
-- Return:
-- customer_id,
-- customer_name,
-- total_spent
with customer_spending as
(
    select o.customer_id, sum(o.amount) as total_spent
    from orders o
    group by o.customer_id
),
avg_spent as
(
    select avg(cs.total_spent) avg_total_spent
    from customer_spending cs
)
select c.customer_id, c.customer_name, cs.total_spent
from customers c
join customer_spending cs
on c.customer_id = cs.customer_id
cross join avg_spent av
where cs.total_spent > av.avg_total_spent
;