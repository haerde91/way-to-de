--Task: Compare orders from the same customer and show which order has a higher amount.
select o1.customer_id, 
o1.order_id as order_1, 
o1.amount as amount_1,
o2.order_id as order_2,
o2.amount as amount_2
from orders o1
    join orders o2
    on o1.customer_id = o2.customer_id
where o1.amount > o2.amount
and o1.order_id <> o2.order_id;
--This task caused me the most problems of all, 
--due to the content not being clear to me at this stage