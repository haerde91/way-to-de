--Task: Find customers whose total spending is higher than the average customer spending.
select c.customer_name
from customers c
    join orders o
    on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having sum(o.amount) > (select avg(x.total_spending)
from (select sum(amount) as total_spending
from orders
group by customer_id) x) ;