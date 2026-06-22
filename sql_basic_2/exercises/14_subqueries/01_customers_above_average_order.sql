--Task: Find customers whose total order amount is higher than the average order amount of all orders.
select c.customer_name
from customers c
    join orders o
    on c.customer_id = o.customer_id
where o.amount > (select avg(amount)
from orders);

    

