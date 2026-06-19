--Task: Find pairs of products that belong to the same category.
--Show both product names and category.
select p.product_name as product_1, 
p2.product_name as product_2,
p.category
from products p
    join products p2
    on p.category = p2.category
where p.product_id < p2.product_id;
