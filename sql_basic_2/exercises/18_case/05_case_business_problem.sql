-- Task:
-- The company wants to understand the activity level of its customers.
-- Table: orders
-- Create a query that returns:
-- customer_id,
-- order_count,
-- activity_level
-- Calculate the number of orders for each customer.
-- Classify customers based on their number of orders:
-- Low Activity — fewer than 3 orders
-- Medium Activity — 3 to 5 orders
-- High Activity — more than 5 orders
-- Keep one row per customer.
-- Sort the result by order_count from highest to lowest.
with count_orders as
(
    select o.customer_id,
    count(o.order_id) as order_count
    from orders o
    group by o.customer_id
),
customers_activity as
(
    select co.customer_id,
    co.order_count,
    case 
        when co.order_count < 3 then 'Low Activity'
        when co.order_count >= 3 and co.order_count <= 5 then 'Medium Activity'
        else 'High Activity'
    end as activity_level
    from count_orders co
)
select *
from customers_activity ca
order by ca.order_count desc
;


