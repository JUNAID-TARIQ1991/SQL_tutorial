# if we have to update a record in invoice table, and we have customer name column instead of
# customer_id, how can we achieve customer_id?
# we can write sub-query inside update statement. 
update invoices 
set payment_total = invoice_total * 0.5,
	payment_date= due_date
where client_id = (select client_id 
					from clients
                    where name = 'Myworks');
                    
#we can update multiple record using subquery!
update invoices
set payment_total= invoice_total,
	payment_date = due_date
where client_id in ( select client_id 
						from clients
                        where state in ('CA', 'NY'))
