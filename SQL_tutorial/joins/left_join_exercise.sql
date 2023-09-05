#select all the product whether they have ordered on not?
select p.product_id, p.name as product , p.unit_price, oi.order_id
from products p
left join order_items oi
on p.product_id=oi.product_id