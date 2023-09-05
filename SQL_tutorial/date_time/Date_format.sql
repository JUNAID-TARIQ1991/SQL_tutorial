#Formatting date and time:
#date as string "2023-08-11"

select date_format(now(), '%m %d %Y');

select date_format(now(),"%r %a %M %D  %Y");

#date_add

select date_add(now(), interval 1 year);
select date_sub(now(), interval 1 day);





