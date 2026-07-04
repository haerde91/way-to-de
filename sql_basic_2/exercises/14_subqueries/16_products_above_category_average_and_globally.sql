--Task: Find products whose price is higher than both:
--the average price in their category
--the average price of all products
select p.product_name
from products p
join
    (
    select category, avg(price) as avg_price_category
    from products
    group by category
    ) avg_price_category
on p.category = avg_price_category.category     
where p.price > avg_price_category.avg_price_category 
and p.price >    
    (
    select avg(price) avg_price_of_all
    from products
    );
