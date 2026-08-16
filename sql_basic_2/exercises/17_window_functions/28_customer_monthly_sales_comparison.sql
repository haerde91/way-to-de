-- Task:
-- The company wants to analyze each customer's monthly sales
-- and compare them with the previous month.
-- For each customer and month, calculate:
-- - the total value of the customer's orders in that month
-- - the difference between the current month's sales
--   and the previous month's sales
-- Return:
-- customer_id,
-- order_month,
-- monthly_sales,
-- previous_month_sales,
-- sales_difference
with orders_values as
(
    select oi.order_id,
    sum(oi.quantity*p.price) as order_value
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id
),
customers_and_orders_metrics as
(
    select o.customer_id,
    date_trunc ('month',o.order_date) as order_month,
    sum(ov.order_value) as monthly_sales
    from orders_values ov
    join orders o
    on ov.order_id = o.order_id 
    group by o.customer_id,
    date_trunc ('month',o.order_date)
),
monthly_metrics as
(
    select caom.customer_id,
    caom.order_month,
    caom.monthly_sales,
    lag(caom.monthly_sales) over(
        partition by caom.customer_id
        order by caom.order_month
    ) as previous_month_sales
    from customers_and_orders_metrics caom    
)
select mm.customer_id,
mm.order_month,
mm.monthly_sales,
mm.previous_month_sales,
(mm.monthly_sales-mm.previous_month_sales) as sales_difference
from monthly_metrics mm
;