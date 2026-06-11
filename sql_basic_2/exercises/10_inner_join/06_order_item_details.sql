--task: Show every ordered product together with the quantity purchased.
select p.product_name, sum(o_i.quantity) as quantity_purchased
from products p
join order_items o_i
    on p.product_id = o_i.product_id
group by p.product_id, p.product_name
order by quantity_purchased desc ;
