select * from customers
where address  not like '%trail%' or
	  address not  like '%avenue%' or
      phone like '%9';
#now use regexp instead of like
#select * from customers
#where last_name regexp 'field';
#start with field
#where last_name regexp '^field'
#end with fiels
#where last_name regexp 'fiels$'

#multiple or

#select * from customers
#where last_name regexp 'field|rose|mac'
# where last_name regexp '^field|$rose|$mac'

# specific search pattern
#where last_name regexp '[i]e'
#where last_name regexp '[gie]e'
#where last_name regexp '[a-z]e'
#where last_name regexp 'e[g]'

select * from customers
where first_name regexp 'elka|Amber' or
	  last_name regexp 'ey$|on$' or
      last_name regexp '^my|[s]e' 