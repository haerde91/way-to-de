--Task: Create a customer activity report showing:
--customer name,
--city,
--number of orders,
--total revenue.
--Include customers with no orders.
--Sort by total revenue in descending order and then by customer name.

select c.customer_name, c.city, 
count(o.order_id) as number_of_orders,
coalesce(sum(o.amount),0) as total_revenue
from customers c
    left join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id, c.city
order by total_revenue desc, c.customer_name ;
