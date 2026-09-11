
--------------question------------------

Q1 Assign a rank to all employees based on Salary from highest to lowest.

Q2 Display FirstName, Salary, and salary rank.

Q3 Rank employees within each department based on Salary from highest to lowest.

Q4 Find the top 3 salary ranks across all employees.

Q5 Find employees who have salary rank 1.

Q6 Rank employees based on Salary from lowest to highest.

Q7 Display EmployeeID, FirstName, DepartmentID, Salary, and department-wise salary rank.

Q8 Find the second-highest salary rank in each department.

Q9 Rank employees by Salary descending and display only employees earning more than ₹50,000.

Q10 Assign two ranks:

Overall salary rank
Department-wise salary rank

Display both ranks.

----------------------solution--------------
select *,
rank() over(order by salary desc) as salary_rank
from employees

select firstname,salary, rank() over(order by salary) as salaryRank
from employees

select *,
rank() over(partition by departmentid order by salary desc) as dept_rank
from employees

select * from(
select *, 
rank() over(order by salary desc) as rannk
from employees) as t 
where rannk <=3

select * from(
select *,
rank() over(order by salary desc) as rannk
from employees) as tt 
limit 1

select *,
rank() over(order by salary asc) as asc_rannk
from employees

select employeeid,firstname,departmentid,salary,
rank() over(partition by departmentid order by salary desc) as department_wise_salary_rank
from employees

select * from(
select *,
rank() over(order by salary desc) as salary_rank
from employees) as t
where salary_rank =2

select * from(
select *,
rank() over(order by salary desc) as rankk
from employees) as tt where salary > 50000

select *,
rank() over(order by salary desc) as salary_rank,
rank() over(partition by departmentid order by salary desc) as department_wise_salary_rank
from employees