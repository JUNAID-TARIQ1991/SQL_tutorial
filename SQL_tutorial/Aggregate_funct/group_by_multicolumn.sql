select i.client_id,sum(invoice_total) as total_sale, c.city , c.state
from invoices i
join clients c
using(client_id)
group by client_id, state,city;
