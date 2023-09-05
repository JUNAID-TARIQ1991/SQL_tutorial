select  *, 'Active' as status
from orders o
where order_date >= '2019-01-01'
union
select  *, 'Archived' as status
from orders o
where order_date < '2019-01-01' 