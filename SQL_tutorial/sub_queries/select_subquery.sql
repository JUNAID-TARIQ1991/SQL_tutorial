select invoice_id, 
		invoice_total,
        (select avg(invoice_total)
        from invoices) as invoice_average,
        invoice_total- (select invoice_average) as Difference
from invoices;