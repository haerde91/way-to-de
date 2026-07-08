-- Task: A company wants to identify customers who have never purchased
-- the cheapest product in the catalog.
-- Find all customers who have never bought the cheapest product.
-- Return:
-- customer_id, customer_name
select c.customer_id, c.customer_name
from customers c
where c.customer_id not in   
    (
    select distinct c1.customer_id
    from customers c1
    join orders o
    on c1.customer_id = o.customer_id
    where o.order_id in
        (
        select oi.order_id
        from order_items oi
        where oi.product_id in
            (
            select product_id
            from products
            where price <=
                (
                select min(price)
                from products
                )
            )
        )
    )
order by c.customer_id;