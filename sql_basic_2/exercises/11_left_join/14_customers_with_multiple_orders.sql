--Task: Show customers who placed more than one order. 
--Display the customer name and the number of orders.
--Sort the result by customer name.
select c.customer_name, count (o.order_id) as number_of_orders
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id
having count(o.order_id) > 1
order by c.customer_name;