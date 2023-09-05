SELECT 
    *
FROM
    products
WHERE
    product_id NOT IN (SELECT DISTINCT
            product_id
        FROM
            order_items);
#using join

select * from products
left join order_items using(product_id); 

#The Exist keyword
select * from products p
where not exists ( select product_id 
				from order_items
                where product_id=p.product_id);