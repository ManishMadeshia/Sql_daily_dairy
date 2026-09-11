---------------question-----------------
Q1 Assign a dense rank to all employees based on Salary from highest to lowest.

Q2 Display FirstName, Salary, and dense salary rank.

Q3 Rank employees within each department using DENSE_RANK() based on Salary descending.

Q4 Find employees with dense rank 1 in each department.

Q5 Find the second-highest distinct salary in the company using DENSE_RANK().

Q6 Find the third-highest distinct salary in each department.

Q7 Display employees earning more than ₹50,000 with their dense salary rank.

Q8 Assign dense ranks based on Salary from lowest to highest.

Q9 Compare RANK() and DENSE_RANK() for all employees in one query.

Q10 Display:

FirstName
Salary
DepartmentID
Overall DENSE_RANK()
Department-wise DENSE_RANK()


----------------solution-------------------


select *,
dense_rank() over(order by salary desc) as salary_rank
from employees

select Firstname,salary,
dense_rank() over(order by salary desc) as dense_salary_rank
from employees

select *,
dense_rank() over(partition by departmentid order by salary desc)  as dense_sal_rank
from employees

select * from(
select *,
dense_rank() over(partition by departmentid order by salary desc) as denseRank
from employees) as t
where denseRank = 1

select distinct salary,rankk from (
select *,
dense_rank() over(order by salary desc) as rankk
from employees) as t where rankk = 2

select distinct salary, rankk from(
select *,
dense_rank() over(order by salary desc) as rankk
from employees) as tt
where rankk = 3

select * from (
select *,
dense_rank() over(order by salary desc) as salary_rank
from employees
) as t
where salary > 50000

select *,
dense_rank() over(order by salary asc) as dense_rannk
from employees

select *,
rank() over(order by salary desc) as rankk,
dense_rank() over(order by salary desc) as densee_rank
from employees

select Firstname,salary,departmentid,
dense_rank() over(order by salary desc) as overall_dense_rank ,
dense_rank() over(partition by departmentid order by salary) as dense_rankk
from employees
