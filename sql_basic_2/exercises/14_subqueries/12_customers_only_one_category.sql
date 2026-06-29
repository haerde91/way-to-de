--Task:Find customers who purchased products from only one category.
select customer_name
from (
    select c.customer_name, c.customer_id, count(distinct p.category) as category_count
    from customers c
        join orders o
        on c.customer_id = o.customer_id
        join order_items oi
        on o.order_id = oi.order_id
        join products p
        on oi.product_id = p.product_id
    group by c.customer_id, c.customer_name
    ) customer_categories
where category_count = 1;