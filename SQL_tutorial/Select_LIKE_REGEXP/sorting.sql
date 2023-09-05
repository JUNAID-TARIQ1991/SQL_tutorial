desc customers ;
select * from customers 
#sorting single column
#order by first_name desc;
order by state , first_name;

# we can sort our data by column name/names either they are in select clause or not
select first_name, last_name, state 
from customers;
#order by customer_id;  

#you can sort your data by an aliases
select first_name, last_name, state as STATE
from customers
order by STATE