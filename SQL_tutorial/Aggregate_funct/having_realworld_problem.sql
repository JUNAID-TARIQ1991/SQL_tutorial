#Select customer from sql_store database who live in 'VA' and have sale more then 100$
select c.customer_id, 
	   c.first_name, 
       c.last_name,
	   sum((oi.quantity*oi.unit_price)) as total_sale

from customers c
join orders o
using(customer_id)
join order_items oi
on o.order_id = oi.order_id
where state = 'VA'
group by c.customer_id