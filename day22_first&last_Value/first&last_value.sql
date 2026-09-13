--------------------question-----------------

Q1 Display every employees:

FirstName
Salary
Lowest salary in the company 

Q2

Display every employees:

FirstName
Salary
Highest salary in the company

Use FIRST_VALUE() with descending salary order.

Q3

Find the lowest salary in each department.

Display:

FirstName
DepartmentID
Salary
Lowest_Department_Salary

Use PARTITION BY DepartmentID.

Q4

Display every employees:

FirstName
Salary
Name of the employee with the highest salary in the company

Q5

Display every employees:

FirstName
Salary
Highest salary in their department

Use FIRST_VALUE(Salary) and PARTITION BY DepartmentID.


Q6 ⭐ Interview Question

Write one query displaying:

EmployeeID
FirstName
DepartmentID
Salary
Lowest salary in the department
Highest salary in the department

Use FIRST_VALUE() twice:

Once with ORDER BY Salary ASC
Once with ORDER BY Salary DESC

--------------solution---------------

select firstname,salary,
first_value(salary) over(order by salary asc) as lowest_salary_in_company
from employees

select firstname,salary,
first_value(salary) over(order by salary desc) as highest_salary_IN_company
from employees

select firstname, departmentid,salary,
first_value(salary) over(partition by departmentid order by salary desc) as lowest_sal_by_dept
from employees

select firstname,salary,
first_value(firstname) over(order by salary asc) as emp_high_salary
from employees

select firstname,salary,departmentid,
first_value(salary) over(partition by departmentid order by salary desc) as highest_sal_in_dept
from employees

select employeeid,firstname,departmentid,salary,
first_value(salary) over(partition by departmentid order by salary asc) as lowest_salary,
first_value(salary) over(partition by departmentid order by salary desc) as highest_salary
from employees


----------------last value question---------------
Q1 — Overall Highest Salary

Write a query to display:

EmployeeID
FirstName
Salary
The highest salary in the company using LAST_VALUE().

Q2 — Overall Lowest Salary

Write a query to display:

EmployeeID
FirstName
Salary
The lowest salary in the company using LAST_VALUE().


Q3 — Department-wise Highest Salary

Write a query to display:

EmployeeID
FirstName
DepartmentID
Salary
The highest salary within each department using LAST_VALUE().


Q4 — Department-wise Lowest Salary

Write a query to display:

EmployeeID
FirstName
DepartmentID
Salary
The lowest salary within each department using LAST_VALUE().


Q5 — Highest-Paid Employees Name

Write a query to display:

EmployeeID
FirstName
Salary
The name of the highest-paid employee using LAST_VALUE().


Q6 — Compare Employee Salary with Department Highest

Write a query to display:

EmployeeID
FirstName
DepartmentID
Salary
Highest salary in their department
Difference between highest department salary and employee salary

Use LAST_VALUE() and arithmetic.

---------------last value solution-----------


select employeeid,firstname,salary,
last_value(salary) over(order by salary asc rows between unbounded preceding and unbounded following) as high_salary
from employees

select employeeid,firstname,salary,
last_value(salary) over(order by salary desc rows between unbounded preceding and unbounded following) as low_salary
from employees

select Employeeid,firstname,departmentid,salary,
last_value(salary) over(partition by departmentid order by salary asc rows between unbounded preceding and unbounded following) as high_sal
from employees

select *,
last_value(salary) over(partition by departmentid order by salary desc rows between unbounded preceding and unbounded following) as low_sal
from employees

select *,
last_value(firstname) over(order by salary asc rows between unbounded preceding and unbounded following) as highest_salary_emp_name
from employees

select employeeid,firstname,departmentid,salary,
last_value(salary) over(partition by departmentid order by salary asc rows between unbounded preceding and unbounded following) as highest_salary,
last_value(salary) over(partition by departmentid order by salary asc rows between unbounded preceding and unbounded following) - salary as difference_salary
from employees