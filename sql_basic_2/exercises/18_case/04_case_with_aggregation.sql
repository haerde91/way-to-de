-- Task:
-- The company wants to analyze orders by customer.
-- Table: orders
-- Create a query that returns:
-- customer_id,
-- total_orders,
-- high_value_orders
-- Calculate:
-- total_orders — the total number of orders for each customer
-- high_value_orders — the number of orders with amount of 500 or more
-- Keep one row per customer.
-- Sort the result by high_value_orders from highest to lowest.

select o.customer_id,
count(o.order_id) as total_orders,
sum(case
        when o.amount >= 500 then 1
        else 0
    end
    ) as high_value_orders
from orders o
group by o.customer_id
order by high_value_orders desc
;
