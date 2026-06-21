--Task: Show how much each customer spent in each product category.
--Display: customer name, category, total spending
--Sort by category and total spending descending.
select c.customer_name, p.category, sum(oi.quantity*p.price) as total_spent
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id
group by c.customer_name, c.customer_id, p.category
order by p.category, spent_money desc;