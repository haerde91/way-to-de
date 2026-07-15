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
with total_spent as
(
    select o.customer_id, sum(o.amount) as amount_spent
    from orders o
    group by o.customer_id
),
avg_spent as
(
    select avg(ts.amount_spent) avg_total_spent
    from total_spent ts
)
select c.customer_id, c.customer_name, ts.amount_spent
from customers c
join total_spent ts
on c.customer_id = ts.customer_id
cross join avg_spent av
where ts.amount_spent > av.avg_total_spent