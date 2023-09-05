
update orders
set comments = "Gold Customers"
where  customer_id in (
			select customer_id 
			from customers 
			where points >3000 );