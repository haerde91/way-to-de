-- Task: A company wants to identify customers who place more orders than the average customer.
-- Find all customers whose number of orders is higher than the average number of orders
-- placed by all customers.
-- Return: customer_id, customer_name
select c.customer_id, c.customer_name
from customers c
join
    (
    select customer_id
    from
        (
        select o1.customer_id, count(*) as total_orders
        from orders o1
        group by o1.customer_id
        having count(*) >
            (
            select avg(t.all_orders)
            from
                (
                select o2.customer_id, count(*) as all_orders
                from orders o2
                group by o2.customer_id
                )   t
            )
        ) 
    )x
on c.customer_id = x.customer_id;