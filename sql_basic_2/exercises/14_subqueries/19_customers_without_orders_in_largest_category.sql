--Task: Find all customers who have never placed an order containing 
--a product from the category with the largest number of products.
select c.customer_id, c.customer_name
from customers c
where not exists
(
    select 1
    from orders o
    join order_items oi
    on o.order_id = oi.order_id
    join products p
    on oi.product_id = p.product_id
    where o.customer_id = c.customer_id
    and p.category =
    (
        select category
        from
            (
            select category, count(product_id) as number_of_products
              from products
              group by category
              order by number_of_products desc
              limit 1
            ) largest_category
    )
)
order by c.customer_id;