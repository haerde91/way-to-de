--Task: Find products that have never been purchased 
--by customers whose total spending is above the average customer spending.
select product_name
from products
where product_id not in
(select p.product_id
from (
    select customer_id , sum(amount) as total_spending
    from orders
    group by customer_id
    having sum(amount) >
    (select sum(amount)/count(distinct customer_id) as avg_per_customer
    from orders) 
    ) customers_above_avg
join orders o
on customers_above_avg.customer_id = o.customer_id
join order_items oi
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id);