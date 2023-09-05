select * from customers
limit 3; # first three record
select * from customers
limit 6,3 ;# sip first 6 and pick nest 3
# top 3 loyal customers
select * from customers
order by points desc 
limit 3