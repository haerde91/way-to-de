-- Task:
-- The marketing team wants to identify customers
-- who have a clear purchasing preference.
-- First calculate how many products
-- each customer purchased in every category.
-- Then return only customer-category pairs
-- where the customer purchased at least 3 products.
-- Return:
-- customer_id,
-- customer_name,
-- category,
-- products_bought

with category_products as
(
    select oi.order_id,
    p.category,
    count(oi.product_id) as number_products
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id, p.category
    order by oi.order_id
),
customer_category as
(
    select c.customer_id,
    c.customer_name,
    cp.category,
    sum(cp.number_products) as products_bought
    from customers c
    join orders o
    on c.customer_id = o.customer_id
    join category_products cp
    on o.order_id = cp.order_id
    group by c.customer_id,
    c.customer_name,
    cp.category
)
select cc.customer_id,
cc.customer_name,
cc.category,
cc.products_bought
from customer_category cc
where cc.products_bought >= 3
order by cc.customer_id
;
