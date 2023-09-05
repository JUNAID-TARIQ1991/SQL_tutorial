select first_name as Name, p.name as Product
from customers c
cross join products p;