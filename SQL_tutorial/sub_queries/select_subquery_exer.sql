select * from
(SELECT 
    client_id,
    name,
    (SELECT 
            SUM(invoice_total)
        FROM
            invoices
        WHERE
            client_id = c.client_id) AS Total_sale,
    (SELECT 
            AVG(invoice_total)
        FROM
            invoices) AS invoice_average,
    (SELECT Total_sale) - (SELECT invoice_average) AS Difference
FROM
    clients c
        
GROUP BY client_id) as Sales_summary
where Total_sale is not null;