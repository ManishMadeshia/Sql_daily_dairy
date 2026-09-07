-------------------any---------------------

Q1 Find employees whose salary is greater than ANY employee in DepartmentID = 1.
select * from employees where salary > any(
select salary from employees where departmentid = 1)


Q2 Find employees whose salary is less than ANY employee in DepartmentID = 2.
select * from employees where salary < any(
select salary from employees where departmentid = 2)


Q3 Find products whose price is greater than ANY product in the Furniture category.
select * from products where price > any(
select price from products where category = 'Furniture')

Q4 Find products whose price is less than ANY product in the Electronics category.
select * from products where price < any(
select price from products where category = 'furniture')

Q5 Find employees whose salary is greater than ANY employee managed by EmployeeID 101.
select * from employees where salary > any(
select salary from employees where managerid= 101)

Q6 Find employees whose salary is less than ANY employee managed by EmployeeID 106.
select * from employees where salary < any(
select salary from employees where managerid = 103)

Q7 Find products whose price is greater than ANY product priced below 10,000.
select * from products where price > any(
select price from products where price < 10000)

Q8 Find employees whose salary is greater than ANY employee in the HR department.

select * from employees where salary > any(
select salary from employees where departmentid = 2)


Q9 Find employees whose salary is less than ANY employee in the IT department.
select * from employees where salary > any(
select salary from employees where departmentid = 1)

Q10 Find employees whose salary is greater than ANY employee in the department of Manish.
select * from employees where salary > any(
select salary from employees where departmentid in (
select departmentid from employees where firstname = 'manish'))