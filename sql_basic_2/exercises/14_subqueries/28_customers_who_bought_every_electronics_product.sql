-- Task: The company wants to identify its most loyal electronics customers.
-- Find all customers who purchased every product
-- from the 'Electronics' category that has been ordered at least once.
-- Return:
-- customer_id,
-- customer_name
select customer_id, customer_name
from
    (
    select c.customer_id, c.customer_name, count(distinct oi1.product_id)
    from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items oi1
    on o.order_id = oi1.order_id
    where oi1.product_id in 
        (
        select distinct oi2.product_id
        from order_items oi2
        where oi2.product_id in
            (
            select p.product_id
            from products p
            where category = 'Electronics'
            )
        )
    group by c.customer_id, c.customer_name
    having count(distinct oi1.product_id) =
        (
        select count(*)
        from
            (
            select distinct oi3.product_id
            from order_items oi3
            where oi3.product_id in
                (
                select p1.product_id
                from products p1
                where category = 'Electronics'
                )
            )   x
        )   
    ) y