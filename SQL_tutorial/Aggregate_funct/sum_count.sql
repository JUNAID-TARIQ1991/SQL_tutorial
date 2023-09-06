# total invoices for each clent as well as no. of invoices
# using sum and count aggregate function
select client_id, 
		sum(invoice_total) as total_sale, 
	   count(invoice_total) as '#_of_invoices'
from invoices
where invoice_date >= '2019-07-01'
group by client_id
order by total_sale desc
