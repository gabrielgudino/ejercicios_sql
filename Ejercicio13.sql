select e.employee_id ,
e.first_name ,
e.last_name ,
e.hire_date ,
rank() over(order by hire_date)
from employees e
