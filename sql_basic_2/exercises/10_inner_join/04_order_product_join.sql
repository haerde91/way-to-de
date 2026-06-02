--task: Display the order ID and the products included in that order.
select o_i.order_id, p.product_name
from order_items o_i
join products p
on o_i.product_id = p.product_id
order by o_i.order_id;