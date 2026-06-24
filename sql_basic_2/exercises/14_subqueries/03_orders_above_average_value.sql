--Task: Find all orders where the order amount is greater than the average order amount.
select order_id
from orders
where amount > (select avg(amount)
from orders);