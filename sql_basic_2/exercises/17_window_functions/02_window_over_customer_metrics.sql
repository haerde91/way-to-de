-- Task:
-- The company wants to display every customer
-- together with the total number of orders in the company.
-- Use a window function.
-- Return:
-- customer_id,
-- customer_name,
-- total_orders_count
with metric as
(
    select distinct count(*) over() as total_order_counts
    from orders o
)
select c.customer_id,
c.customer_name,
m.total_order_counts
from customers c
cross join metric m
order by c.customer_id
;