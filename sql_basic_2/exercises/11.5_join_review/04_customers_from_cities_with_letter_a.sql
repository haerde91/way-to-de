--Task:Show customers whose city contains the letter "a" (case-insensitive). 
--Display customer name, city, number of orders, and total revenue.
--Include customers with no orders.
select c.customer_name, c.city, 
count(o.order_id) as number_of_orders, coalesce(sum(o.amount),0) as total_revenue
from customers c
    left join orders o
    on c.customer_id = o.customer_id
where c.city ilike '%a%'
group by c.customer_name, c.customer_id, c.city;