--------------------cte question--------------

'''
Q1 — Basic CTE
Create a CTE containing EmployeeID, FirstName, and Salary, then display all records from the CTE.

Q2 — CTE + WHERE
Using a CTE, find employees whose salary is greater than 60,000.

Q3 — CTE + GROUP BY
Using a CTE, calculate the average salary of each department.

Q4 — CTE + HAVING
Using a CTE, find departments where the average salary is greater than 55,000.

Q5 — CTE + COUNT
Using a CTE, calculate the number of employees in each department.

Q6 — CTE + ORDER BY
Using a CTE, calculate the average salary of each department and display the result in descending order of average salary.
'''

------------------solution--------------------
with employee_detail as (
select employeeid,firstname,lastname, salary from employees
)
select * from employee_detail

with employee_sal as (
select * from employees where salary > 60000
)
select * from employee_sal

with avg_sal as (
select departmentid,avg(salary) as dept_avg_salary from employees group by departmentid
) 
select * from avg_sal


with avg_sal as (
select departmentid,avg(salary) as dept_avg_salary from employees group by departmentid having avg(salary) > 55000
) 
select * from avg_sal

with emp_count as(
select departmentid, count(employeeid) as emp_count from employees group by departmentid
)
select * from emp_count


with avg_sal as (
select departmentid, avg(salary) as avg_salary from employees group by departmentid order by avg(salary) desc
)
select * from avg_sal

------------------------cte join----------------

Q1
Using a CTE, calculate the average salary for each department.
Then display:
DepartmentName
AverageSalary

Q2
Using a CTE, calculate the number of employees in each department.
Then display:
DepartmentName
EmployeeCount

Q3
Using a CTE, calculate the maximum salary in each department.
Then display:
DepartmentName
MaximumSalary

Q4
Using a CTE, calculate the total salary paid by each department.
Then display:
DepartmentName
TotalSalary

Q5
Using a CTE, calculate for each department:
DepartmentID
AverageSalary
MaximumSalary

Then join with Departments and display:
DepartmentName
AverageSalary
MaximumSalary

---------------solution----------------

select * from employees;
select * from departments;

with dept_avg as(
select departmentid,avg(salary) as dept_avg_sal from employees group by departmentid
)
select d.departmentname,da.dept_avg_sal from dept_avg da
 join departments d
 on da.departmentid = d.departmentid
 
 with emp_count as(
 select departmentid,count(employeeid) as emp_count from employees group by departmentid
 )
 select ec.departmentid,d.departmentname,ec.emp_count from emp_count ec join departments d on ec.departmentid = d.departmentid
 
 with max_sal as(
 select departmentid,max(salary) as max_sal from employees group by departmentid
 )
 select ms.departmentid,d.departmentname,ms.max_sal from max_sal ms join departments d on ms.departmentid = d.departmentid
 
 with total_sal as (
 select departmentid,sum(salary) as total_salary from employees group by departmentid
 )
 select ts.departmentid,d.departmentname,ts.total_salary from total_sal ts join departments d on ts.departmentid = d.departmentid
 
 
 with mix_query as (
 select departmentid,avg(salary) as averageSalary,max(salary) as maximumSalary from employees group by departmentid
 )
 select d.departmentid,d.departmentname,mq.averageSalary,mq.maximumSalary from mix_query as mq join departments d on mq.departmentid = d.departmentid




 ----------------------------CTE + JOIN + WHERE------------------------

Q6
Using a CTE, calculate the average salary of each department.
Display only departments where average salary > 60,000:
DepartmentName
AverageSalary

Q7
Using a CTE, calculate the employee count for each department.
Display only departments having more than 2 employees:
DepartmentName
EmployeeCount

Q8
Using a CTE, calculate the maximum salary for each department.
Display only departments where the maximum salary > 70,000:
DepartmentName
MaximumSalary

Q9
Using a CTE, calculate:
DepartmentID
AverageSalary
EmployeeCount

Then display only departments where:
- Average salary > 55,000
- Employee count >= 2
Final output:
DepartmentName
AverageSalary
EmployeeCount

Q10 — Slightly harder 🔥
Using a CTE, calculate for each department:
DepartmentID
TotalSalary
AverageSalary
MaximumSalary
EmployeeCount

Then join with Departments and display only departments where:
AverageSalary > 60,000 AND MaximumSalary > 70,000

----------------solution-----------------------

select * from employees;
select * from departments;

with dept_avg as(
select departmentid,avg(salary) as dept_avg_sal from employees group by departmentid
)
select d.departmentname,da.dept_avg_sal from dept_avg da
 join departments d
 on da.departmentid = d.departmentid
 where da.dept_avg_sal > 60000
 
with emp_count as(
 select departmentid,count(employeeid) as emp_count from employees group by departmentid
 )
 select ec.departmentid,d.departmentname,ec.emp_count from emp_count ec 
 join departments d 
 on ec.departmentid = d.departmentid
 where ec.emp_count > 2
 
 
with max_sal as(
 select departmentid,
 max(salary) as max_sal 
 from employees 
 group by departmentid
 )
 select ms.departmentid,d.departmentname,ms.max_sal from max_sal ms 
 join departments d 
 on ms.departmentid = d.departmentid
 where ms.max_sal > 70000
 
with mul_query as (
 select departmentid,
 avg(salary) as avg_sal,
 count(employeeid) as emp_count
 from employees 
 group by departmentid
 )
 select d.departmentid,
 d.departmentname,
 mq.avg_sal,
 mq.emp_count 
 from mul_query mq 
 join departments d 
 on mq.departmentid = d.departmentid
 where mq.avg_sal > 55000 and mq.emp_count >= 2
 
 
with mult_queries as(
select departmentid,
sum(salary) as total_salary,
avg(salary) as avg_salary,
max(salary) as max_salary,
min(salary) as min_salary,
count(employeeid) as emp_count from employees
group by departmentid
)

select d.departmentid,
d.departmentname,
mq.total_salary,
mq.avg_salary,
mq.max_salary,
mq.min_salary,
mq.emp_count
from mult_queries mq 
join departments d on
mq.departmentid = d.departmentid
where mq.avg_salary > 60000 and mq.max_salary > 70000