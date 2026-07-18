-- Task:
-- The sales team wants to analyze product categories.
-- Return categories whose total sales value is higher
-- than the average total sales value across all categories.
-- Return:
-- category,
-- total_sales
with total_sales_category as
(
    select p.category,
    sum(oi.quantity*p.price) as total_sales
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by p.category
),
avg_sales_category as
(
    select avg(tsc.total_sales) as avg_total_sales
    from total_sales_category tsc
)
select tsc.category,
tsc.total_sales
from total_sales_category tsc
cross join avg_sales_category ac
where tsc.total_sales > ac.avg_total_sales
;