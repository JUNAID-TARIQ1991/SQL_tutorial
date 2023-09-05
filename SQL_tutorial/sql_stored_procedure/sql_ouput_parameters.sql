drop procedure if exists get_unpaid_invoices_for_clients;
delimiter $$
create procedure get_unpaid_invoices_for_clients( 
client_id int,
out invoice_count int,
out invoice_total decimal(9,2)
)
begin
select count(*), sum(invoice_total) into invoice_count, invoice_total
from invoices i
where i.client_id = client_id and i.payment_total = 0;
end $$
delimiter ;


