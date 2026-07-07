--Task: A company wants to identify product categories that are not generating high-value orders.
--Find all product categories for which none of their products 
--have ever appeared in an order whose amount is above the average order amount.
--Return: category
select distinct p.category
from products p
where p.category not in
    (
    select distinct p2.category
    from products p2
    join order_items oi
    on p2.product_id = oi.product_id
    join orders o
    on oi.order_id = o.order_id
    where amount >
        (
        select avg(amount)
        from orders
        )
    );