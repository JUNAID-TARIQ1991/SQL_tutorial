
select state, city,sum(invoice_total) as total_sale
from invoices 
join clients using( client_id)
group by city, state  with rollup