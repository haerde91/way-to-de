-- Task:
-- The marketing team wants to analyze customer purchasing behavior.
-- Return customers who purchased products
-- from at least 2 different categories.
-- Return:
-- customer_id,
-- customer_name,
-- categories_bought
with customer_categories as
(
    select o.customer_id,
    count(distinct p.category) as number_category
    from orders o
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id
    group by o.customer_id
)
select cc.customer_id, 
c.customer_name,
cc.number_category as categories_bought
from customer_categories cc
join customers c
on cc.customer_id = c.customer_id
where cc.number_category >= 2
order by cc.customer_id
;
