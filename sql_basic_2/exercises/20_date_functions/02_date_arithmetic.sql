-- Task:
-- The company wants to understand how long customers have been active.
-- Table: orders
-- Create a query that returns:
-- customer_id,
-- first_order_date,
-- last_order_date,
-- active_days
-- Calculate:
-- first_order_date — the date of the customer's first order
-- last_order_date — the date of the customer's most recent order
-- active_days — the number of days between the first and last order
-- Keep one row per customer.
-- Sort the result by active_days from highest to lowest.
with customers_activity as
(
    select o.customer_id,
    min(o.order_date) as first_order_date,
    max(o.order_date) as last_order_date
    from orders o
    group by o.customer_id
)
select ca.customer_id,
ca.first_order_date,
ca.last_order_date,
(ca.last_order_date - ca.first_order_date) as active_days
from customers_activity ca
order by active_days desc
;
