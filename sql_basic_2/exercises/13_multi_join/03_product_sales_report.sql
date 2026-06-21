--Task: Create a product sales report showing: product name, category, 
--number of orders containing this product
select p.product_name,
p.category,
count(distinct oi.order_id) as number_of_orders
 from order_items oi
  join products p
  on oi.product_id = p.product_id
  group by p.product_name, p.category;