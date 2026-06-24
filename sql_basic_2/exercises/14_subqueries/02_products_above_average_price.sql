--Task: Find products that have a price higher than the average product price.
select product_name
from products
where price > (select avg(price)
from products);