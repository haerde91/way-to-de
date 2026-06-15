--Task: For each customer, calculate total amount spent.
select c.customer_name, coalesce (sum(o.amount),0) as total_amount_spent
from customers c
    left join orders o
    on c.customer_id = o.customer_id
group by c.customer_name, c.customer_id;

--I learned that LEFT JOIN can produce NULL values,
-- and COALESCE allows me to replace them with meaningful business values such as 0.