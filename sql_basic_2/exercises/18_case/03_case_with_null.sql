-- Task:
-- The company wants to identify orders with missing customer information.
-- Table: orders
-- Create a query that returns:
-- order_id,
-- customer_id,
-- customer_status
-- Classify each order as:
-- Known Customer — customer_id is available
-- Unknown Customer — customer_id is NULL
-- Keep one row per order.
-- Sort the result by order_id.
select o.order_id,
o.customer_id,
case
    when o.customer_id is Null
    then 'Unknown Customer'
    else 'Known Customer'
end as customer_status
from orders o
order by o.order_id
;