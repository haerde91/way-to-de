--Task: Show orders that contain more than 1 item.
select o.order_id
from orders o
    left join order_items o_i
    on o.order_id = o_i.order_id
group by o.order_id
having count(o_i.product_id) > 1;