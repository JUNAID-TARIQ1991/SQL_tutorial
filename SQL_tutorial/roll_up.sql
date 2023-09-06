select pm.name as payment_method, 
	   sum(amount) as total
from payments p
join payment_methods pm
on p.payment_method = pm.payment_method_id
#group by payment_method with rollup
group by pm.name with rollup
#with rollup you canot use aliases in the group by clause
