--task: Display the customer name, order date, and order amount.
select c.customer_name, o.order_date, o.amount
from customers c 
join orders o
on c.customer_id = c.customer_id;