-- Task: A company wants to identify orders containing only expensive products.
-- Find all orders where every product in the order has a price higher than 1000.
-- Return: order_id
select distinct oi1.order_id
from order_items oi1
where oi1.order_id not in
    (
    select distinct oi2.order_id
    from order_items oi2
    join products p
    on oi2.product_id = p.product_id
    where p.price <= 1000
    );