--Task: Show all customers whose name contains the letter "a" (case-insensitive), 
--together with the number of orders they placed. Include customers with zero orders.
-- Sort the result by number of orders in descending order.
select c.customer_name, count(o.order_id) as number_of_orders
from customers c
    left join orders o
    on c.customer_id = o.customer_id
where c.customer_name ilike '%a%'
group by c.customer_name, c.customer_id
order by number_of_orders desc;