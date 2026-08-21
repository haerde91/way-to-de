-- Task:
-- The company wants to generate a customer report.
-- Table: customers
-- Create a query that returns:
-- customer_id,
-- customer_name,
-- city
-- Some customers do not have a city assigned.
-- Display 'Unknown City' instead of NULL.
-- Keep one row per customer.
-- Sort the result by customer_id.
select c.customer_id,
c.customer_name,
coalesce (c.city, 'Unknown City') as city
from customers c
order by c.customer_id;

