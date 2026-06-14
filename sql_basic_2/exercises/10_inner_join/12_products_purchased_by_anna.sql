--task: List all products purchased by Anna.
select p.product_name
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items o_i
    on o.order_id = o_i.order_id
    join products p
    on o_i.product_id = p.product_id
where c.customer_name = 'Anna';