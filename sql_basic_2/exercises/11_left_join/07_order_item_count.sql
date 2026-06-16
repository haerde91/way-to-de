--Task: Count how many items are in each order.
select o.order_id, count(o_i.product_id) as count_items
from orders o
    left join order_items o_i
    on o.order_id = o_i.order_id
group by o.order_id;