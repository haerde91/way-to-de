--Task: Show complete order details: customer name, order id, order date, product name
select o.order_id, 
c.customer_name, 
p.product_name, 
o.order_date
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id;