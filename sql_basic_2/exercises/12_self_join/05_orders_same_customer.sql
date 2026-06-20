--Task: Find pairs of orders placed by the same customer.
--Show customer ID and both order IDs.
select o1.customer_id, 
o1.order_id as order_1,
o2.order_id as order_2
from orders o1
    join orders o2
    on o1.customer_id = o2.customer_id
where o1.order_id < o2.order_id;
