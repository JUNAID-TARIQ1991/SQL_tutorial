select * from products
where unit_price > (
select unit_price 
from products where product_id =3);