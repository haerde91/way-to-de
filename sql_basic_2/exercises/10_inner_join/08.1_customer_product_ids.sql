--task:Display customer names and the IDs of products they purchased.
select c.customer_name, o_i.product_id
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items o_i
    on o.order_id = o_i.order_id;
