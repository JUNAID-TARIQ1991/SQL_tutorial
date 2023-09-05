create table invoices_archived as 
select i.invoice_id, i.client_id, c.name as Client_Name, i.payment_total 
from clients c
join invoices i
on c.client_id = i.client_id
where payment_date is not null; 