--Task: Find products that are more expensive 
--than the average price of products in their category.
select p1.product_name
from products p1
where p1.price > (select avg(p2.price) 
from products p2
where p2.category = p1.category);