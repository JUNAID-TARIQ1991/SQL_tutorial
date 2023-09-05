#drop procedure if exists get_clients_by_state;
delimiter $$
create procedure get_clients_by_state(state char(2))
begin
select * from clients c
where c.state = state;
end $$
delimiter ;

# to call this procedure
call get_clients_by_state('ca');

#exercise

delimiter $$
create procedure get_invoice_by_client(id int)
begin
select * from invoices i
where i.invoice_id = id;
end $$
delimiter ; 

call get_invoice_by_client(2);
