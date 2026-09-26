------------question-------------
Practice Questions
Q1

Display FirstName and LastName as one column named FullName using CONCAT().

Q2

Display employee details in this format:

Manish works in Department 1

Use CONCAT().

Q3

Display:

Manish earns 65000 salary

Use CONCAT().

Q4

Create an email-style string using:

firstname.lastname@company.com

Use CONCAT() and LOWER().

Q5

Display employee information in this format:

Employee: Manish | Salary: 65000 | Department: 1

Use CONCAT().

Q6

Use CONCAT_WS() to combine FirstName, LastName, and DepartmentID with a hyphen (-) separator.

--------------------solution--------------------
select firstname,lastname,concat(firstname,' ' ,lastname ) as fullname from employees

select employeeid, concat(firstname, ' works in depsrtment ',departmentid) as emp_details from employees
select employeeid, concat(firstname, ' earns ',salary,'salary' ) as emp_salary_details from employees

select firstname, lower(concat(firstname,'.',lastname,'@company.com'))as email from employees
select firstname, concat('Employee: ',firstname,' | ','Salary: ',salary,' | ','Department: ', Departmentid) as emp_details from employees
SELECT
    CONCAT_WS('-', FirstName, LastName, DepartmentID) AS Employee_Details
FROM Employees;