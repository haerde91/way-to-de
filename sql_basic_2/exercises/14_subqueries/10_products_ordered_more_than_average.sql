--Task: Find products that were ordered more times than the average number of orders per product.
select p.product_name
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_name, p.product_id
having count(oi.product_id) >
    (
    select avg(total_number_of_orders) 
    from (select product_id, count(product_id) as total_number_of_orders
    from order_items
    group by product_id) x
    );