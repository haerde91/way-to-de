--Task: A company wants to identify products that are popular among its best customers.
--Define top customers as customers whose total spending 
--is above the average total spending of all customers.
--Find all products that were bought by every top customer.
--Return: product_id, product_name
select p.product_id, p.product_name
from products p
join order_items oi
on p.product_id = oi.product_id
join orders o
on oi.order_id = o.order_id
where o.customer_id in
    (
    select o.customer_id
    from orders o
    group by o.customer_id
    having sum(o.amount) >
        (
        select sum(amount) / count(distinct customer_id)
        from orders
        )
    )
group by p.product_id, p.product_name
having count(distinct o.customer_id) =
    (
    select count(*)
    from
        (
        select o.customer_id
        from orders o
        group by o.customer_id
        having sum(o.amount) >
            (
            select sum(amount) / count(distinct customer_id)
            from orders
            )
        ) top_customers
    );