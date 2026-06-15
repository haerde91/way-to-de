--Task: For each customer, count number of orders (include customers with 0 orders).
select c.customer_name, count (o.order_id) as number_of_orders
from customers c
    left join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id;