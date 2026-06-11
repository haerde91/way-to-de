--task: Display customer names and the IDs of products they purchased.
select c.customer_name, j.product_id
from customers c
join (
    select o_i.product_id, o.customer_id
    from orders o
    join order_items o_i
    on o.order_id = o_i.order_id
) j
on c.customer_id = j.customer_id;
--I solved this task this way because I didn't know the actual method. 
--After submitting the task to Chat for review, 
--gpt told me that the subquery was unnecessary.
