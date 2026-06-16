--Task: Calculate total revenue per customer, include those with zero revenue.
select c.customer_name, coalesce(sum(o.amount),0) as total_revenue
from customers c
    left join orders o
    on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;
