--Task: Find unique pairs of customers who live in the same city.
--Do not show duplicated pairs or match a customer with themselves.
select c.customer_name as customer_1, j.customer_name as customer_2
from customers c
    join customers j
    on c.city = j.city
where c.customer_id < j.customer_id;