--Task: Create a report showing:
--customer name
--number of different products purchased
--total quantity purchased
select c.customer_name, 
count(distinct oi.product_id) as number_of_different_products,
sum(oi.quantity) as total_quantity
from customers c
    join orders o
    on c.customer_id = o.customer_id
    join order_items oi
    on o.order_id = oi.order_id
group by c.customer_name, c.customer_id
order by number_of_different_products desc,
total_quanity desc;