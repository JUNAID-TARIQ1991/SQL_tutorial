select client_id, 
sum(invoice_total) as total_sale,
count(*) as invoice_count
from invoices
group by client_id
having total_sale >  500;