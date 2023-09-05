select order_id, product_id, (quantity*unit_price) as Price
from order_items
where order_id = 2
order by Price desc;

#or 
select *, quantity * unit_price as total_Price 
from order_items
where order_id =2
order by total_price desc