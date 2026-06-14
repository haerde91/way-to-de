--Task: Find customers who have never placed an order.
select c.customer_name
from customers c
    left join orders o
    on c.customer_id = o.customer_id
where o.order_id is null;