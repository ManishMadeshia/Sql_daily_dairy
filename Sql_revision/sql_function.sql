--------------rownumber-----------------

'''  
Q1
Display all employees with a unique sequential number based on highest salary first.
Q2
Assign a sequential number to employees within each department, with the highest-paid employee getting number 1.
Q3
Display EmployeeID, FirstName, Salary and assign numbers based on EmployeeID ascending.
Q4
For each department, assign a sequential number based on lowest salary first.
Q5
Find the highest-paid employee from each department using a window function.
'''

solution

select *,
	row_number() over(order by salary desc) as highest_salary
from employees

select *,
	row_number() over(partition by departmentid order by salary desc ) as dept_by_high_sal
from employees

select employeeid,firstname,salary,
row_number() over(order by employeeid asc) as row_num
from employees

select * ,
row_number() over(partition by departmentid order by salary asc) as emp_sal
from employees


select * from(
select *,
	row_number() over(partition by departmentid order by salary desc) as highest_sal
from employees
) t where highest_sal = 1

---------------------------rank ---------------------

'''
Q6
Rank all employees based on salary from highest to lowest.
Q7
Rank employees based on salary within each department.
Q8
Display each employees salary and their overall salary rank, along with FirstName.
Q9
Find employees who have an overall salary rank of 3.
Q10
Find the top 2 salary ranks from each department.
'''


solution:


select *,
	rank() over(order by salary desc) as emp_rank from employees
    
select *,
	rank() over(partition by departmentid order by salary desc) as emp_rank
from employees

select firstname, salary,
rank() over(order by salary desc) as salary_rank
 from employees
 
 
select * from(
select *,
	rank() over(order by salary desc) as ranks
from employees 
) t where ranks =2

select * from(
select *,
rank() over(order by salary desc) as rankss
 from employees
) t where rankss in (1,2)


--------------------dense rank------------------

'''
Q11
Display all employees with their salary and dense rank based on salary from highest to lowest.

Q12
Assign a dense salary rank within each department.

Q13
Find employees having the second-highest distinct salary overall.

Q14
Find employees having the third-highest distinct salary in each department.

Q15
Display:
FirstName
Salary
DepartmentID
Department Salary Dense Rank

'''

solution:

select *,
dense_rank() over(order by salary desc) as sal_rank
 from employees
 
 select *,
 dense_rank() over(partition by departmentid order by salary desc) as dept_rank
 from employees
 
 select * from(
 select *,
 dense_rank() over(order by salary desc) as sal_rank
 from employees) t where sal_rank = 2
 
  select * from(
 select *,
 dense_rank() over(partition by departmentid order by salary desc) as sal_rank
 from employees) t where sal_rank = 3
 
 select firstname, salary,departmentid,
 dense_rank() over(partition by departmentid order by salary desc) as department_salary_dense_rank
 from employees

----------------------lead------------------


'''
Q16
Display each employees salary and the salary of the next employee based on EmployeeID.

Q17
Display:
FirstName
Salary
Next_Salary
ordered by EmployeeID.

Q18
Find employees whose next employee has a higher salary.

Q19
For each department, display the employees salary and the salary of the next employee within that department, ordered by salary descending.

Q20
Display the salary difference between the current employee and the next employee based on EmployeeID.
'''

----------------solution-------------

select *,
lead(salary) over(order by employeeid ) as nxt_salary
from employees

select firstname,salary,
lead(salary) over(order by employeeid ) as nxt_salary
from employees

select *,
lead(salary) over(order by salary asc) as nxt_high_salry
from employees

select firstname, salary,departmentid,
lead(salary) over(partition by departmentid order by salary desc )as dpet_sal_rank
 from employees
 
 select employeeid, firstname,salary,
 lead(salary) over(order by employeeid asc) as nxt_sal,
 salary - lead(salary) over(order by employeeid asc) as sal_diff
 from employees


 ------------------------lag-----------------------
'''
Q21
Display each employees salary and the salary of the previous employee based on EmployeeID.

Q22
Display:
FirstName
Salary
Previous_Salary

Q23
Find employees whose salary is higher than the previous employees salary.

Q24
For each department, display the employees salary and the previous salary within that department, ordered by salary descending.

Q25
Calculate the difference between the current salary and the previous employees salary.

'''
-----------------solution---------------------
 select *,
lag(salary) over(order by employeeid asc) as prev_emp_salary
from employees

select firstname,salary,
lag(salary) over(order by employeeid asc) as prev_emp_salary
from employees

select * from(
select firstname,salary,
lag(salary) over(order by employeeid desc) as prev_emp_salary
from employees) t where salary > prev_emp_salary

select firstname,salary,departmentid,
lag(salary) over(partition by departmentid order by salary desc) as prev_salary
from employees

select firstname,salary,
lag(salary) over(order by employeeid) as prev_salary,
salary - lag(salary) over(order by employeeid)  as salary_diff
from employees

--------------is null / is not null---------------

'''

Q26
Find all employees who do not have a manager.

Q27
Find all employees who have a manager.

Q28
Find departments where DepartmentName is NULL.

Q29
Find employees where ManagerID is NULL and salary is greater than 60000.

Q30
Find employees where ManagerID is NOT NULL and DepartmentID is NOT NULL.

'''

----------------solution---------------

select * from employees where managerid is null

select * from employees where managerid is not null

select * from departments where departmentname is null

select * from employees where managerid is null and salary > 60000

select * from employees where managerid is not null and departmentid is not null


-------------------------isnull------------------
'''
Q31
Display FirstName and ManagerID. If ManagerID is NULL, display 0.

Q32
Display FirstName and Salary. If Salary is NULL, display 50000.

Q33
Display FirstName and replace a NULL DepartmentID with -1.

Q34
Display:
FirstName
Salary
Salary_Status

If Salary is NULL, show 0; otherwise show the actual salary.

Q35
Calculate the total salary, treating NULL salaries as 0.

'''
--------------------solution----------------

select firstname,ifnull(managerid,0) as managerid from employees

select firstname,ifnull(salary,5000) as salary from employees

select firstname,ifnull(departmentid,-1)  as departmentid from employees

select firstname,salary,ifnull(salary,0) as salary_status from employees

select sum(salary) from(
select firstname,ifnull(salary,0) as salary from employees) t


------------------coalesce-----------------
'''
35.
Assume an Employees table has:
Phone
Mobile
AlternatePhone

Q36
Display the first available phone number from:
Phone → Mobile → AlternatePhone

Q37
Display FirstName and the first available contact number.

Q38
If all three phone columns are NULL, display:
'No Contact'

Q39
Find employees whose first available contact number is their Mobile number.

Q40
Display:
FirstName
Phone
Mobile
AlternatePhone
Best_Contact

where Best_Contact is the first non-NULL value among the three columns.

'''


-------------solution---------------

select firstname, coalesce(phone,mobile,alternatephone) as best_contact from employees
select firstname, coalesce(phone,mobile,alternatephone) as contact_number from employees

select firstname,coalesce(phone,mobile,alternatephone, 'no contact') as contact_number from employees

select firstname,mobile from employees where mobile is not null and phone is null

select firstname,lastname,mobile,phone,alternatePhone, coalesce(phone,mobile,alternatephone) as best_contact from employees