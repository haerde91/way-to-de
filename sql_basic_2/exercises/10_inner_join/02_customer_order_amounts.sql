--task: Display the customer name and the amount of each order.
select c.customer_name, o.amount
from customers c
join orders o
on c.customer_id = o.customer_id;