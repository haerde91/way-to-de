--Task: Find pairs of products from the same category 
--where one product is more expensive than the other.
--Show both product names and their prices.
select p1.product_name as product_1,
p1.price as price_product_1,
p2.product_name as product_2,
p2.price as price_product_2
from products p1
    join products p2
    on p1.category = p2.category
where p1.product_id < p2.product_id
and p1.price > p2.price;