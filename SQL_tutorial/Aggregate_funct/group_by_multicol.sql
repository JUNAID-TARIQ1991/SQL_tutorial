select 
   c.state,
   c.city,
   sum(invoice_total) as total_sale,
   count(invoice_total) as total_invoice
from invoices 
join clients c using(client_id)
group by state, city
