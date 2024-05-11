select * from employees
start with title = 'President'
connect by
manager_id = prior employee_id