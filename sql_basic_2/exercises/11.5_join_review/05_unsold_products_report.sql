--Task: Create a report showing products that have never been sold. 
--Display product name, category, and price. Sort by price in descending order.
select p.product_name, p.category, p.price
from products p
    left join order_items o_i
    on p.product_id = o_i.product_id
group by p.product_name, p.category, p.price, p.product_id
having count(o_i.order_id) = 0
order by p.price desc;