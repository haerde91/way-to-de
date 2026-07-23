-- Task:
-- The company wants to identify products
-- that have never been ordered.
-- Use EXISTS or NOT EXISTS.
-- Return:
-- product_id,
-- product_name
select p.product_id, p.product_name
from products p
where not exists
(
    select 1
    from order_items oi
    where p.product_id = oi.product_id
)
;