--Task: Create a purchase history showing:
--customer name
--order date
--products purchased
--quantity
select c.customer_name, 
o.order_date, 
p.product_name, 
oi.quantity
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id
order by o.order_date;