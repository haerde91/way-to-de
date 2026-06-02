--task: Display the customer name and their order ID.
select c.customer_name, o.order_id
from customers c 
join orders o
on c.customer_id = o.customer_id;