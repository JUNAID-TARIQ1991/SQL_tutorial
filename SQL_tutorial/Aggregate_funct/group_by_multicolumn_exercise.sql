select p.date as payment_date , pm.name as payment_method, sum(amount) as total_payment
from payments p
join payment_methods pm 
on p.payment_method = pm.payment_method_id
group by payment_date, payment_method;

