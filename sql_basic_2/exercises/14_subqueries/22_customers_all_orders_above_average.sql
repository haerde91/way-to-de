--Task: A company wants to identify its most consistently valuable customers.
--Find all customers whose every order amount 
--is greater than the average order amount of all orders.
--Return: customer_id, customer_name
select c.customer_id, c.customer_name
from customers c
where c.customer_id in
    (
    select customer_id
    from orders
    )
and c.customer_id not in
    (
    select distinct c2.customer_id
    from customers c2
    join orders o 
    on c2.customer_id = o.customer_id
    where o.amount <= 
        (
        select avg (amount)
        from orders
        )
    );