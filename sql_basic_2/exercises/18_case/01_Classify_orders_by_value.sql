-- Task:
-- You work with an e-commerce database.
-- Table: orders
-- Create a query that returns:
-- order_id,
-- total_amount,
-- order_category
-- Classify each order as:
-- Low — total amount below 100
-- Medium — total amount from 100 to 499.99
-- High — total amount of 500 or more
-- Keep one row per order.
-- Sort the result by total_amount from highest to lowest.
select o.order_id,
o.amount,
case 
    when o.amount < 100
    then 'Low'
    when o.amount >= 100 and o.amount < 500
    then 'Medium'
    else 'High'
end
as order_category
from orders o
order by o.amount desc
;
