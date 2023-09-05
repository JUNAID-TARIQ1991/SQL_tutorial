select c.customer_id, c.first_name, c.state, sum(oi.quantity * oi.unit_price) as Total_sale
from customers c
join orders o using(customer_id)
join order_items oi using(order_id)
group by state, customer_id, first_name
having state = 'VA' and Total_sale > 100;
