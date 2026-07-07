--Task: A company wants to identify premium products.
--Find all products that are more expensive than every product in the "Electronics" category.
--Return: product_id, product_name, price
select p.product_id, p.product_name, p.price
from products p 
where p.price > 
    (select max(price) as max_price
    from products
    where category ilike 'electronics'
    );