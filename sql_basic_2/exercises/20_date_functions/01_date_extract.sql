-- Task:
-- The company wants to analyze when orders were placed.
-- Table: orders
-- Create a query that returns:
-- order_id,
-- order_date,
-- order_year
-- Extract the year from order_date and store it as order_year.
-- Keep one row per order.
-- Sort the result by order_date from oldest to newest.
select o.order_id,
o.order_date,
extract (year from o.order_date) as order_year
from orders o
order by o.order_date
;