--Task:Find customers who have never placed an order with a total amount greater than 500.
select customer_name
from customers
where customer_id not in (select customer_id
from orders 
where amount > 500);
