--Task: Find the most expensive product in each category.
--If multiple products have the same highest price, return all of them.
select p.product_name 
from products p 
    join (
        select category, max(price) as max_price
        from products
        group by category
        ) m
    on p.category = m.category
    and p.price = m.max_price;
