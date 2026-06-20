--Task: Find pairs of orders created on the same date.
--Show both order IDs and the order date.
select o1.order_id as order_1,
o2.order_id as order_2,
o1.order_date
from orders o1
    join orders o2
    on o1.order_date = o2.order_date
where o1.order_id < o2.order_id;
