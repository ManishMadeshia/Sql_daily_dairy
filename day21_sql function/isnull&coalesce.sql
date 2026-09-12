--------------------if null question------------

Q1 Display FirstName and ManagerID. If ManagerID is NULL, display 0.

Q2 Display FirstName and Salary. If Salary is NULL, display 50000.

Q3 Display employee details and replace a NULL DepartmentID with -1.

Q4 Display:

FirstName
ManagerID
New column Manager_Status

If ManagerID is NULL, display 'No Manager'; otherwise display the ManagerID.

Q5 Display FirstName, Salary, and Final_Salary.
If Salary is NULL, replace it with 30000.

Q6 Display all employees and replace NULL ManagerID values with the text 'Top Level Manager'.

Q7 Find the total salary of all employees. Treat NULL salaries as 0.

Q8 Display employee name and salary after increasing salary by 10%. If Salary is NULL, treat it as 0 before calculating.

Expected logic:

NULL → 0 → 10% increase
Q9 Display FirstName and a new column Salary_Status.

Rules:

If Salary is NULL → 'Salary Not Assigned'
Otherwise → 'Salary Available'

Q10 — Interview Question ⭐

Write a query to display:

EmployeeID
FirstName
Salary
ManagerID
Final_Salary
Manager_Status

Rules:

If Salary is NULL, Final_Salary should be 0.
If ManagerID is NULL, Manager_Status should be 'No Manager'.
Otherwise, keep the original values.



-------------------if null solution------------------


select firstname,managerid,ifnull(Managerid, 0) as managerid from employees
select firstname,salary, ifnull(salary, 50000) as salary from employees
select *, ifnull(departmentid,-1) as deptid from employees
select firstname,managerid,ifnull(managerid,'no manager') as manager_status from employees
select firstname,salary,ifnull(salary,30000) as final_salary from employees
select firstname,salary,ifnull(managerid,'top level manager') as managerid from employees
select sum(ifnull(salary,0)) as total_salary from employees
select firstname as employeename,ifnull(salary,0) * 1.10 as new_salary  from employees
select firstname, if(salary is null, 'salary not assigned', 'salary avaibale') as salary_status from employees

select 
employeeid,
firstname,
salary,
managerid,
ifnull(salary,0) as final_salary,
ifnull(managerid, 'no manager') as manager_status
from employees


---------------coalesce question --------------

Q1 Display FirstName and ManagerID.

If ManagerID is NULL, display 0.

Q2 Display FirstName and Salary.

If Salary is NULL, display 50000.

Q3 Display FirstName, DepartmentID, and a new column Final_DepartmentID.

Use COALESCE() to replace NULL DepartmentID with -1.

Q4 Display FirstName and Manager_Status.

Rules:

If ManagerID is not NULL, display ManagerID.
If ManagerID is NULL, display 'No Manager'.

Use COALESCE().

Q5 Display:

FirstName
Salary
Bonus
Final_Amount

Assume Bonus may contain NULL values.

Calculate:

Salary + Bonus

If Bonus is NULL, treat it as 0.

Q6 Display employee details and create Contact_Number.

Assume the table has:

Phone
Mobile
AlternatePhone

Use COALESCE() to return the first available non-NULL number.

Q7 Display FirstName and Salary_Status.

Rules:

If Salary is available, display Salary.
If Salary is NULL, display 30000.

Use COALESCE().

Q8 Display all employees and calculate salary after a 10% increase.

If Salary is NULL, treat it as 0.

Expected logic:

COALESCE(Salary, 0) * 1.10
Q9 Write a query using COALESCE() with three values:

NULL, NULL, 100

Return the first non-NULL value.

Q10 — Interview Question ⭐

Display:

EmployeeID
FirstName
Salary
ManagerID
Final_Salary
Manager_Status

Rules:

If Salary is NULL, Final_Salary should be 0.
If ManagerID is NULL, Manager_Status should be 'No Manager'.
Otherwise, keep the original values.

Use COALESCE(), not IFNULL().

---------------solution---------------------

select firstname, coalesce(managerid,0) from employees
select firstname, coalesce(salary,50000) from employees
select firstname,departmentid,coalesce(departmentid,-1) as final_department_id from employees
select firstname, coalesce(managerid,'no managerId') as manager_status from employees
select firstname,
coalesce(phonenumber,mobile,alternatephone) as contact_number 
from employees
select firstname, coalesce(salary,30000) as final_salary from employees
select firstname,salary,coalesce(salary,0) * 1.10 as increased_salary from employees
SELECT COALESCE(NULL, NULL, 100) AS Result;

select 
employeeid,
firstname,
salary,
managerid,
coalesce(salary,0) as final_salary,
coalesce(managerid, 'no manager') as manager_status
from employees