--Task: Find customers whose average order value is higher than the average order value of all customers.
select c.customer_name
from customers c
join (select customer_id, avg(amount) as avg_order_value
    from orders
    group by customer_id
     ) customer_avg
on c.customer_id = customer_avg.customer_id
where customer_avg.avg_order_value 
>
(
    select avg(amount)
    from orders
);