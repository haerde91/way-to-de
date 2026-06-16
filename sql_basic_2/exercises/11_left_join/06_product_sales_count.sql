--Task: Show each product and how many times it was sold (include products never sold).
select p.product_name, count(o_i.quantity) as sales_count
from products p
    left join order_items o_i
    on p.product_id = o_i.product_id
group by p.product_name;