--task: List all products included in order 105.
select p.product_name
from products p
join order_items o_i
    on p.product_id = o_i.product_id
    where o_i.order_id = 105;