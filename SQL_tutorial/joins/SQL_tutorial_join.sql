select c.customer_id, c.first_name, c.last_name, c.phone, o.shipped_date, 
(oi.quantity*oi.unit_price) as total_price, p.name as Product
from customers c
join orders o using(customer_id)
join order_items oi using(order_id)
join products p using(product_id)
