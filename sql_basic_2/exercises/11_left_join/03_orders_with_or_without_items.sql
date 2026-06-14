--Task: Show all orders and their items (if any exist).
select o.order_id, p.product_name
from orders o
    left join order_items o_i
    on o.order_id = o_i.order_id
    left join products p
    on o_i.product_id = p.product_id;