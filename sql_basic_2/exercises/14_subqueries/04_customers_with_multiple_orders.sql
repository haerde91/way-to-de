--Task: Find customers who placed more orders than the average number of orders per customer.
select c.customer_name, count(o.order_id) as total_orders
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having count(o.order_id) > (select avg(total_orders)
from (select customer_id, count(order_id) as total_orders
from orders
group by customer_id) avg_orders
);