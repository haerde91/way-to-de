--Task: Create a complete sales analysis report containing:
--customer name
--city
--product name
--category
--quantity
--order amount
select c.customer_name,
c.city,
p.product_name,
p.category, 
oi.quantity,
o.amount as total_order
from customers c
    join orders o 
    on c.customer_id = o.customer_id
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id
order by o.amount desc;
