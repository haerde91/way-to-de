-- Task:
-- The company wants to group orders by month.
-- Table: orders
-- Create a query that returns:
-- order_id,
-- order_date,
-- order_month
-- Convert each order_date to the beginning of its month.
-- Store the result as order_month.
-- Keep one row per order.
-- Sort the result by order_date from oldest to newest.
select o.order_id,
o.order_date,
date_trunc ('month',o.order_date) as order_month
from orders o
order by o.order_date