--Task: Find products that are more expensive than other products in the same category.
select p1.product_name as product_1,
p1.price as price_1,
p2.product_name as product_2,
p2.price as price_2,
p1.category
from products p1
    join products p2
    on p1.category = p2.category
where p1.price > p2.price
and p1.product_id < p2.product_id;