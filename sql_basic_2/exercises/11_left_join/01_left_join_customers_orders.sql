--Task: Show all customers and their orders (if any).
select c.customer_name, o.order_id
from customers c
    left join orders o
    on c.customer_id = o.customer_id;