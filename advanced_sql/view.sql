----------------------------view question---------------------------

Level 1: Basic
Q1. Create a view named IT_Employees_View that displays EmployeeID and FirstName for employees whose DepartmentID = 1.

Q2. Create a view named HighSalaryView that displays FirstName and Salary for employees earning more than ₹60,000.

Q3. Display all records from HighSalaryView, sorted by salary from highest to lowest.
Level 2: Filtering and modifying views

Q4. Query HighSalaryView to display only employees earning more than ₹75,000.

Q5. Replace HighSalaryView so that it displays EmployeeID, FirstName, and Salary for employees earning at least ₹70,000.

Q6. Delete the view IT_Employees_View without deleting any records from the Employees table.
Level 3: Views with joins and aggregations

Q7. Create a view named EmployeeDepartmentView that displays EmployeeID, FirstName, and DepartmentName by joining Employees and Departments.

Q8. Create a view named DepartmentSalaryView that displays each DepartmentID and its average salary.
Level 4: Interview concepts

Q9. Can you create a view using a query containing GROUP BY? Create one that shows the total number of employees in each department.

Q10. Explain the difference between a view, a CTE, and a table in your own words.


------------------------------solution------------
Create view IT_Employees_view as
select employeeid,firstname from employees
where departmentID = 1

select * from IT_employees_view


Create view HighSalaryView as
select firstname,salary from employees
where salary > 60000

select * from HighSalaryView


select * from HighSalaryView order by salary desc

select * from HighSalaryView where salary > 75000

create or Replace view HighSalaryView as
select employeeid,firstname,salary from employees where salary >= 70000

select * from HighSalaryView


Drop view IT_Employees_view

Create view EmployeeDepartmentView as
select e.employeeid,e.firstname,e.departmentid,d.departmentname from employees e
join departments d on e.departmentid = d.departmentid

select * from employeedepartmentview

create view DepartmentSalaryview as 
select departmentid,avg(salary) as average_salary from employees
group by departmentid 

select * from departmentsalaryview

create view countEmp as
select departmentid,count(*) as emp_count from employees
group by departmentid

select * from countEmp


