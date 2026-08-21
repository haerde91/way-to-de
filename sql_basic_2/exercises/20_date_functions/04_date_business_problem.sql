-- Task:
-- The company wants to analyze customer activity by year.
-- Table: orders
-- Create a query that returns:
-- customer_id,
-- order_year,
-- order_count
-- Calculate the number of orders placed by each customer in each year.
-- Keep one row per customer per year.
-- Sort the result by customer_id and order_year.
with orders_dates as
(    
    select o.customer_id,
    o.order_id,
    extract (year from o.order_date) as order_year
    from orders o
)
select od.customer_id,
od.order_year,
count(od.order_id) as order_count
from orders_dates od
group by od.customer_id,
od.order_year
order by od.customer_id,
od.order_year
;