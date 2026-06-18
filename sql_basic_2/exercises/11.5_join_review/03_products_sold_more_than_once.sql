--Task: Show products that were sold more than once. 
--Display product name and number of sales. 
--Sort by number of sales in descending order.
select p.product_name, count(o_i.order_id) as number_of_sales
from products p
    join order_items o_i
    on p.product_id = o_i.product_id
group by p.product_name, p.product_id
having count(o_i.order_id) > 1
order by number_of_sales desc;