--Task: Show products that were never sold or were sold only once. 
--Display the product name and the number of sales.
select p.product_name, count(o_i.order_id) as number_of_sales
from products p
    left join order_items o_i
    on p.product_id = o_i.product_id
group by p.product_name, p.product_id
having count(o_i.order_id) <= 1;