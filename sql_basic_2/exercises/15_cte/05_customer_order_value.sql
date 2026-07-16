-- Task:
-- The company wants to identify customers whose average order value
-- is higher than the average order value across all customers.
-- Build the solution using TWO CTEs.
-- Step 1:
-- Calculate the average order value for each customer.
-- Step 2:
-- Using the first CTE, calculate the overall average
-- of customer average order values.
-- Finally return customers whose average order value
-- is greater than the overall average.
-- Return:
-- customer_id,
-- customer_name,
-- avg_order_value
with customer_avg_orders as
(
    select o.customer_id, avg(o.amount) as avg_order_value
    from orders o
    group by o.customer_id
),
overall_avg as
(
    select avg(cao.avg_order_value) as overall_avg_order_value
    from customer_avg_orders cao
)
select c.customer_id, c.customer_name, cao.avg_order_value
from customers c
join customer_avg_orders cao
on c.customer_id = cao.customer_id
cross join overall_avg oa
where cao.avg_order_value > oa.overall_avg_order_value
;