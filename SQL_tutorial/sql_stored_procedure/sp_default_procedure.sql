drop procedure if exists get_clients_by_state;
delimiter $$
create procedure get_clients_by_state(state char(2))
begin
	if state is null then
    set state = 'ca';
    end if;
select * from clients c
where c.state = state;
end $$
delimiter ;

call get_clients_by_state(null);