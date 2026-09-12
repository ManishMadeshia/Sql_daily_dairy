-----------------question------------
LAG()
1. Display each employee's salary and previous employee's salary based on EmployeeID.
2. Find the salary difference between the current employee and previous employee.
3. Find employees whose salary is higher than the previous employee.
4. Find the previous employees name and salary.
5. Calculate previous salary department-wise.

-------------solution------------------


select Employeeid,firstname,salary,
lag(salary) over(order by employeeid) as prev_salary
from employees

select Employeeid, firstname, salary,
lag(salary) over(order by employeeid) as prev_salary,
salary - lag(salary) over(order by employeeid) as salary_diff
from employees

select * from(
select employeeid,firstname,salary,
lag(salary) over(order by employeeid) as prev_sal
from employees) as t 
where salary > prev_sal

select employeeid,firstname,salary,
lag(firstname) over(order by employeeid) as prev_emp_name,
lag(salary) over(order by employeeid) as prev_emp_sal
from employees

select firstname,salary,departmentid,
lag(salary) over(partition by departmentid order by employeeid) as department_wise_prev_sal
from employees


---------------------------lead question------------------

1. Display each employee's salary and next employee's salary.
2. Find the salary difference between the next employee and current employee.
3. Find employees whose salary is lower than the next employee.
4. Display the next employee name.
5. Calculate the next salary department-wise.


--------------------solution-----------------



select employeeid,firstname,salary,
lead(salary) over(order by employeeid) as nxt_sal 
from employees

select employeeid,firstname,salary,
lead(salary) over(order by employeeid) as nxt_sal,
salary - lead(salary) over(order by employeeid) as salary_diff
from employees

select * from(
select employeeid,firstname,salary,
lead(salary) over(order by employeeid) as nxt_sal
from employees) as t
 where salary < nxt_sal

select employeeid,firstname,lastname,salary,
lead(firstname) over(order by employeeid) as nxt_emp_name
from employees


select employeeid,firstname,salary,departmentid,
lead(salary) over(partition by departmentid order by employeeid) as dept_wise_nxt_sal
from employees

