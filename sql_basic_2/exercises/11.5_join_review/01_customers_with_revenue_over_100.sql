--Task: Show customers whose total revenue is greater than 100. 
--Display customer name and total revenue.
--Include only customers who meet the condition. 
--Sort by total revenue in descending order.
select c.customer_name, sum(o.amount) as total_revenue
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id
having sum(o.amount) > 100
order by total_revenue desc