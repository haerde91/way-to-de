--Task: Find orders that contain more products than the average order.
select order_id
from order_items 
group by order_id
having sum (quantity) >
(
    select avg(sum_quantity) as avg_quantity
    from (select oi.order_id, sum (oi.quantity) as sum_quantity
    from order_items oi
    group by oi.order_id) order_quantities
); 
