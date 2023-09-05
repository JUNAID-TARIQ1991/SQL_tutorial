create or replace  view client_balance as  
select c.client_id,
       c.name,
       sum(invoice_total-payment_total ) as Balance
from invoices 
join clients c using(client_id)
group by client_id
order by Balance desc