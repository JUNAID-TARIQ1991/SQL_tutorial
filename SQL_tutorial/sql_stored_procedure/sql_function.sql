drop function if exists get_risk_factor_for_client ;
delimiter $$
create function get_risk_factor_for_client(
client_id int
)
returns integer
#deterministic
reads sql data
#modifies sql data
begin
     declare risk_factor decimal(9,2) default 0;
	 declare invoices_total decimal(9,2);
	 declare invoices_count int;
select count(*), sum(invoice_total)
into invoices_count, invoices_total
from invoices i
where i.client_id= client_id;
set risk_factor = invoices_total/invoices_count*5; 
return  ifnull(risk_factor, 0);


end $$
delimiter ;


###call

select client_id,
		name,
        get_risk_factor_for_client(client_id) as Risk_factor
from clients ;