select employee_id, first_name, salary
from employees
where salary > ( select avg(salary) from employees)



