-- Task:
-- The company wants to segment customers based on their total spending.
-- Table: orders
-- Create a query that returns:
-- customer_id,
-- total_spending,
-- customer_segment
-- Calculate the total amount spent by each customer.
-- Classify customers as:
-- Low Value — total spending below 500
-- Medium Value — total spending from 500 to 1999.99
-- High Value — total spending of 2000 or more
-- Keep one row per customer.
-- Sort the result by total_spending from highest to lowest.
with customers_metrics as
(
    select o.customer_id,
    sum(o.amount) as total_spending
    from orders o
    group by o.customer_id
)
select cm.customer_id,
cm.total_spending,
case
    when cm.total_spending < 500
    then 'Low Value'
    when cm.total_spending >= 500 and cm.total_spending < 2000
    then 'Medium Value'
    else 'High Value'
end as customer_segment
from customers_metrics cm
order by cm.total_spending desc
