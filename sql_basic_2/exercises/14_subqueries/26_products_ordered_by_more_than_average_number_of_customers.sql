-- Task: A company wants to identify products that have above-average customer reach.
-- Find all products that were purchased by more customers than the average number
-- of customers per product.
-- Return: product_id, product_name

select product_id, product_name
from products
where product_id in    
    (
    select product_id
    from
        (
        select oi1.product_id, count(distinct o1.customer_id) as count_customer
        from orders o1
        join order_items oi1
        on o1.order_id = oi1.order_id
        group by oi1.product_id
        ) 
    where count_customer >
        (
        select avg(customer_per_product.customer_per_product) as avg_customer_per_product
        from 
            (
            select oi2.product_id, count(distinct o2.customer_id) as customer_per_product
            from orders o2
            join order_items oi2
            on o2.order_id = oi2.order_id
            group by oi2.product_id
            ) customer_per_product
        )
    );