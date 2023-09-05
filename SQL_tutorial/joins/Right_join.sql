select c.customer_id, c.first_name, c.state, c.phone, o.order_id
from orders o 
right join customers c 
on c.customer_id=o.customer_id
order by customer_id;