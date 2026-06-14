--Task: Show customer names and product categories they have purchased.
select c.customer_name, p.category
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items o_i
    on o.order_id = o_i.order_id
    join products p
    on o_i.product_id = p.product_id;