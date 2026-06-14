-- Task: For each customer, show the total number of orders 
-- and the total value of those orders.
select c.customer_name, 
count(o.order_id) as number_of_orders,
sum(o.amount) as value_of_orders
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;