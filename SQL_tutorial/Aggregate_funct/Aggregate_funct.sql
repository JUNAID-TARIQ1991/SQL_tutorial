select max(payment_date),
sum(invoice_total) as Total,
count(invoice_total) as 'number of invoices'
from invoices;

select client_id,count(invoice_total) as 'num_of_invoices', count(payment_date) as 'number of payments'
from invoices
group by client_id;



select max(invoice_total), min(invoice_total), sum(invoice_total * 1.1) as 'new_total', count(*) as tot_record
from invoices
where invoice_date > '2019-07-01';

select count(distinct client_id)  as total_clients
from invoices;
