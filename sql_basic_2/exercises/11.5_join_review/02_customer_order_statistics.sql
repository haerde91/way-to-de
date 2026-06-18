--task: Create a report showing:
--customer name,
--city,
--number of orders.
--Include customers with no orders. Sort by customer name.
select c.customer_name, c.city, count(o.order_id) as number_of_orders
from customers c
    left join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.city, c.customer_id
order by c.customer_name;
