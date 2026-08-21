-- Task:
-- The company wants to identify customers with incomplete location data.
-- Table: customers
-- Create a query that returns:
-- customer_id,
-- customer_name,
-- city,
-- location_status
-- Classify each customer as:
-- 'Complete' — city is available
-- 'Incomplete' — city is NULL
-- Keep one row per customer.
-- Sort the result by location_status and customer_id.
select c.customer_id,
c.customer_name,
c.city,
case
    when c.city is null then 'Incomplete'
    else 'Complete'
end as location_status
from customers c
order by location_status,
c.customer_id
;
