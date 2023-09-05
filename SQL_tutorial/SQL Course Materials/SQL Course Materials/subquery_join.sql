select c.customer_id, c.first_name, c.last_name
from customers c
where customer_id in (
select o.customer_id from orders o
join order_items oi using(order_id)
where product_id =3);