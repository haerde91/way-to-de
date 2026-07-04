--Task: Find customers who placed at least one order worth more than the average order value.
select distinct c.customer_id, c.customer_name
from customers c
join orders o
on c.customer_id = o.customer_id
where o.amount > (select avg(amount)
from orders);