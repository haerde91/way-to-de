--Task: Find customers with no orders and products never sold.
--customers with no orders
select c.customer_name
from customers c
    left join orders o
    on c.customer_id = o.customer_id
where o.order_id is null;

--product never sold
select p.product_name
from products p
    left join order_items o_i
    on p.product_id = o_i.product_id
where o_i.order_id is null;

  