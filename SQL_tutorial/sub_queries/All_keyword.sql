#The all keyword:
#Select all the clients with invoices > client_id=3
#using coditional operator
select * from invoices
where invoice_total >(
select max(invoice_total)
from  invoices
where client_id =3);

#using all keyword:
select * from invoices
where invoice_total > all(
select invoice_total
from  invoices
where client_id =3);