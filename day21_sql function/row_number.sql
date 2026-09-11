--------------------question------------------

Q1 Assign a unique row number to all employees based on Salary from highest to lowest.

Q2 Display FirstName, Salary, and row number.

Q3 Assign row numbers within each department based on Salary descending.

Q4 Find the highest-paid employee from each department using ROW_NUMBER().

Q5 Find the second-highest-paid employee from each department.

Q6 Find the third-highest-paid employee from each department.

Q7 Display employees earning more than ₹50,000 with their row numbers.

Q8 Assign row numbers based on Salary from lowest to highest.

Q9 Create two row numbers:

Overall row number
Department-wise row number


Q10 Find the top 2 employees from every department using ROW_NUMBER().



--------------------solution------------------


select *,
row_number() over(order by salary desc) as row_numm
from employees

select firstname,salary,
row_number() over(order by salary desc) as row_num
from employees

select *, 
row_number() over(partition by departmentid order by salary desc) as row_num
from employees

select * from (
select *,
row_number() over(partition by departmentid order by salary desc) as row_num
from employees) as tt
 where row_num = 1
 
 select * from (
select *,
row_number() over(partition by departmentid order by salary desc) as row_num
from employees) as t
 where row_num = 2

select * from (
select *,
row_number() over(partition by departmentid order by salary desc) as row_num
from employees) as tt
 where row_num = 3
 
 select * from(
 select *,
 row_number() over(order by salary desc) as row_numm
 from employees) as tt where salary > 50000
 
 select *,
 row_number() over(order by salary asc) as row_num_asc
 from employees
 
 select *,
 row_number() over(order by salary desc) as overall_row_num,
 row_number() over(partition by departmentid order by salary desc) as dept_wise_row_num
 from employees
 
 select * from (
 select *,
 row_number() over(partition by departmentid order by salary desc) as row_num
 from employees) as tt where row_num <= 2
 