SELECT 
    *
FROM
    clients
WHERE
    client_id IN (SELECT DISTINCT
            client_id
        FROM
            invoices);
SELECT 
    *
FROM
    clients c
        LEFT JOIN
    invoices i USING (client_id);

SELECT 
    *
FROM
    clients
WHERE
    client_id NOT IN (SELECT DISTINCT
            client_id
        FROM
            invoices i
                JOIN
            clients c USING (client_id));

SELECT 
    *
FROM
    clients c
WHERE
    EXISTS( SELECT 
            client_id
        FROM
            invoices i
        WHERE
            client_id = c.client_id);

                   