---------------------------question----------------------
Q1 Using a subquery in FROM, display employees whose salary is greater than ₹60,000.

Q2 Using a subquery in FROM, display only FirstName and Salary for employees whose salary is less than ₹60,000.

Q3 Calculate the average salary for each department using a subquery in FROM, then display only departments whose average salary is greater than ₹60,000.

Q4 Calculate the maximum salary for each department using a subquery in FROM, then display departments whose maximum salary is greater than ₹70,000.

Q5 Calculate the employee count for each department using a subquery in FROM, then display departments having more than 2 employees.

Q6 Calculate the total salary for each department using a subquery in FROM, then display departments whose total salary is greater than ₹150,000.

Q7 Create a derived table containing:

FirstName
Salary
AnnualSalary

where:

AnnualSalary = Salary × 12

Then using the outer query, display employees whose AnnualSalary is greater than ₹700,000.

Q8 Create a derived table containing:

DepartmentID
AverageSalary
EmployeeCount

Then display only departments where:

AverageSalary > 60000
AND EmployeeCount >= 2

Q9 Create a derived table containing each employees:

FirstName
Salary
SalaryDifference

where:

SalaryDifference = Salary - 60000

Then display employees whose SalaryDifference is greater than 10,000.

Q10 Create a derived table containing:

DepartmentID
TotalSalary
AverageSalary

Then display the department with the highest TotalSalary.

------------------------solution------------------



select * from(
select firstname, salary from employees where salary > 60000) as salarytmp

select * from(
select firstname, salary
from employees where salary > 60000) as tmpsalary

select * from(
select departmentid, avg(salary) as avg_sal from employees group by departmentid) as avg_sal where avg_sal >60000

select * from(
select departmentid, max(salary) as maxx
from employees
group by departmentid) as maxx_sal
where maxx > 70000

select * from (
select departmentid, count(employeeid) as empCount
from employees group by departmentid) as empTmp
where empCount >= 2

select * from (
select departmentid, sum(salary) as total_sal
from employees group by departmentid) as tot_sal
where total_sal > 150000

select * from(
select firstname, salary, (salary*12) as annualsalary from employees) annualsalarytmp
where annualsalary > 700000


select * from(
select departmentid, avg(salary) as AverageSalary,count(employeeid) as EmployeeCount
from employees
group by departmentid
) as tmp
where AverageSalary > 60000 and EmployeeCount >= 2

select * from(
select firstname,salary,(salary-60000) as salarydifference
from employees) as tmp
where salarydifference > 10000


select * from(
select departmentid, sum(salary) as totalsalary, avg(salary) as avgsalary
from employees group by departmentid 
) as tmp
order by totalsalary desc limit 1 