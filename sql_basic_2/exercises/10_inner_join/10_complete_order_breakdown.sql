--task: Show all orders together with the products included in each order.
select o_i.order_id, p.product_name
from order_items o_i
    join products p
    on o_i.product_id = p.product_id;