--task: Display the names of customers who have placed at least one order.
select distinct c.customer_name
from customers c
join orders o
on c.customer_id = o.customer_id;