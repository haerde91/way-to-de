--Task: Count how many order items belong to each order.
select order_id, count(*) as item_counts
from order_items
group by order_id;