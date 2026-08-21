-- Task:
-- The company wants to identify orders with missing customer information.
-- Table: orders
-- Create a query that returns:
-- order_id,
-- customer_id,
-- order_status
-- Classify each order as:
-- 'Missing Customer' — customer_id is NULL
-- 'Assigned Customer' — customer_id is not NULL
-- Keep one row per order.
-- Sort the result by order_id.
select o.order_id,
o.customer_id,
case
    when o.customer_id is null then 'Missing Customer'
    else 'Assigned Customer'
end as order_status
from orders o
order by o.order_id
;