--Task: Find products that have never appeared in any order.
select p.product_name
from products p
where p.product_id not in (select oi.product_id
from order_items oi);