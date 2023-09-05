#using join clause
select distinct c.customer_id, c.first_name, c.last_name
from customers c
join orders o using(customer_id)
join order_items oi 
on o.order_id = oi.order_id
where oi.product_id =3 ;

#using In clause(simple)
select customer_id, first_name, last_name 
from customers where customer_id in (
select distinct customer_id 
from orders o
join order_items oi using(order_id)
where product_id=3);