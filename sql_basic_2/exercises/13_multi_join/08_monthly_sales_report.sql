--Task: Create a monthly sales report showing:
--month
--number of orders
--total revenue
select extract (year from order_date) as year, 
extract (month from order_date) as month,
count(order_id) as number_of_orders,
sum(amount) as total_revenue
from orders
group by extract (year from order_date),
extract (month from order_date)
order by year, month;