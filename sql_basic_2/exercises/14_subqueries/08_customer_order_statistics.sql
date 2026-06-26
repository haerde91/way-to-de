--Task: Create a customer summary showing:
--customer name
--number of orders
--total spending
--Return only customers whose total spending is above 
--the average total spending of all customers.
select c.customer_name, 
count(o.order_id) as number_of_orders,
sum(o.amount) as total_spending
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id
having sum(o.amount) > (
    select avg(total_spending)
    from (select sum(amount) as total_spending
    from orders
    group by customer_id)x
    )
    --hardest task what i made alone (: 