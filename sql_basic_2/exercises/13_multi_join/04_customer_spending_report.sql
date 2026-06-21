--Task: Create a customer spending report showing:
--customer name, number of orders, total amount spent
select c.customer_name,
count(o.order_id) as number_of_orders,
sum(o.amount) as total_amount_spent
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id
order by total_amount_spent desc;