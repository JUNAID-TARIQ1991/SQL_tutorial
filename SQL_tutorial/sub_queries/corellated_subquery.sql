# select employee whose salary is above the average in his office.alter

select * from employees e
where salary >( select avg(salary)
				from employees
                where office_id=e.office_id);