
select pm.name , sum(amount) as total
from payment_methods pm
join payments p 
on pm.payment_method_id = p. payment_method
group by pm.name with rollup;
