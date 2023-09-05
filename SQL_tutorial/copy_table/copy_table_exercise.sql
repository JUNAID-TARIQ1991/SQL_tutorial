
create table invoices_archived as 
select i.invoice_id, 
       i.number, 
       c.name as  Name,
       i.invoice_total,
       i.payment_total,
       i.payment_date
from invoices i
join clients c
on i.client_id = c.client_id
where payment_date is not null;