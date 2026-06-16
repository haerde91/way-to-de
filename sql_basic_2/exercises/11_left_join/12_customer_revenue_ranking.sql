--Task: Show each customer together with their total revenue. 
--Include customers with zero revenue. 
--Sort the result by total revenue in descending order.
select c.customer_name, coalesce(sum(o.amount),0) as total_revenue
from customers c
    left join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id
order by total_revenue desc;