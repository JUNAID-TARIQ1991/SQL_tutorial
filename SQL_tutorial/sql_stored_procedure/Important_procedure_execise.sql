use sql_invoicing;
#drop procedure if exists get_payments
delimiter $$
create procedure get_payments(client_id int, payment_method_id tinyint)
begin
	select * from payments p
    join clients c using(client_id)
    join payment_methods pm
    on p.payment_method = pm.payment_method_id 
    where p.client_id = ifnull(client_id, p.client_id) and 
		p.payment_method= ifnull(payment_method_id, p.payment_method);
    
end $$
delimiter ;

call get_payments(1, 2)
    