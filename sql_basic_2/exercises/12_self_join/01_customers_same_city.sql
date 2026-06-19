--Task: Find pairs of customers who live in the same city.
--Show both customer names and the city
select c.customer_name, j.customer_name as pair_customer, c.city
from customers c
    join customers j
    on c.city = j.city
where c.customer_id <> j.customer_id
and c.customer_id < j.customer_id;
--While solving this self join task, I gradually improved the query logic.
--First, I joined customers by city, then I removed matches where a customer was paired with themselves.
--After that, I learned how to avoid duplicate pairs by keeping only one direction of the relationship
--using customer IDs.
