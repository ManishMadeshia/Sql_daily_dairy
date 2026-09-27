
-----------🔥 Revision 1 — SELECT + WHERE + DISTINCT-------------
Q1 — Easy

Display EmployeeID, FirstName, and Salary for employees whose salary is greater than 60,000.

Q2 — Easy

Display FirstName and Salary for employees whose salary is between 50,000 and 70,000.

Q3 — Medium

Display all employees whose DepartmentID is 2 or 3.

Q4 — Medium

Display the distinct DepartmentIDs from the Employees table.

Q5 — Medium/Interview

Display EmployeeID, FirstName, and Salary for employees who:

belong to Department 1
have salary greater than 60,000
and display the result with highest salary first.

-------------solution-------------
select employeeid,firstname,salary from employees where salary > 60000
select firstname,salary from employees where salary between 50000 and 70000
select * from employees where departmentid = 2 or departmentid = 3
select distinct departmentid from employees
select employeeid,firstname,salary from employees where departmentid = 1 and salary > 60000 order by salary desc

-------------🔥 Revision 2 — ORDER BY-------------

Q1 — Easy

Display EmployeeID, FirstName, and Salary, sorted by salary from lowest to highest.

Q2 — Easy

Display EmployeeID, FirstName, and Salary, sorted by salary from highest to lowest.

Q3 — Medium

Display all employees sorted by:

DepartmentID ascending
Within each department, Salary descending.
Q4 — Medium

Display FirstName, Salary, and DepartmentID, sorted by salary descending, but show only the top 5 employees.

Q5 — Interview

Display all employees sorted by:

DepartmentID ascending
Salary descending
If two employees have the same salary, sort their FirstName alphabetically.

------------solution---------------

select employeeid,firstname,salary from employees order by salary asc
select employeeid,firstname,salary from employees order by salary desc
select * from employees order by departmentid asc , salary desc
select firstname,salary,departmentid from employees order by salary desc limit 5
select * from employees order by departmentid asc, salary desc, firstname asc


-----------------------Revision 3 — LIKE---------------------
Q1 — Easy

Find employees whose FirstName starts with A.

Q2 — Easy

Find employees whose FirstName ends with a.

Q3 — Medium

Find employees whose FirstName contains the letter h anywhere.

Q4 — Medium

Find employees whose FirstName has exactly 5 characters.

Q5 — Interview

Find employees whose FirstName:

starts with A
contains exactly 5 characters
and display EmployeeID, FirstName, and Salary.

------------------solution--------------

select * from employees where firstname like 'A%'
select * from employees where firstname like '%a'
select * from employees where firstname like "%h%"
select * from employees where firstname like "_____"
select Employeeid,firstname,salary from employees where firstname like "A____%"

----------------------🔥 Revision 4 — Aggregate Functions

Q1 — Easy

Find the total number of employees.

Q2 — Easy

Find the total salary paid to all employees.

Q3 — Medium

Find the average salary of all employees.

Q4 — Medium

Find the highest and lowest salary in the company.

Q5 — Interview

Display all of these in one row:

Total employees
Total salary
Average salary
Highest salary
Lowest salary




----------solution---------
select count(*) as total_count from employees
select sum(salary) as total_salary from employees
select avg(salary) as avg_salary from employees
select min(salary) as minimum_salary, max(salary) as maximum_salary from employees
select count(*) as total_count,sum(salary) as total_salary,avg(salary) as avg_salary,min(salary) as min_salary,max(salary) as max_salary from employees

--------------------🔥 Revision 5 — GROUP BY


Q1 — Easy

Display the number of employees in each department.

Q2 — Easy

Display the total salary paid in each department.

Q3 — Medium

Display the average salary of each department.

Q4 — Medium

Display each DepartmentID with its highest and lowest salary.

Q5 — Interview

Display departments where:

Number of employees is greater than 2
Average salary is greater than ₹55,000

Show:

DepartmentID
Employee count
Average salary

--------------solution--------------

select departmentid,count(employeeid) as emp_count from employees group by departmentid
select departmentid as department , sum(salary) as total_salary from employees group by departmentid
select departmentid,avg(salary) as avg_salary from employees group by departmentid
select departmentid as department, max(salary) as maximum_salary, min(salary) as minimum_salary from employees group by departmentid
select departmentid,count(*) as emp_count, avg(salary) as avg_salary from employees group by departmentid having emp_count > 2 and avg_salary > 55000

-------------🔥 Revision 6 — HAVING

Q1 — Easy

Find departments having more than 3 employees.

Q2 — Easy

Find departments where the average salary is greater than ₹60,000.

Q3 — Medium

Find departments where the total salary is greater than ₹150,000.

Q4 — Medium

Find departments where:

Employee count is at least 3
Highest salary is greater than ₹70,000

Display DepartmentID, employee count, and highest salary.

Q5 — Interview

Find departments where:

Employee count is greater than 2
Average salary is greater than ₹55,000
Total salary is greater than ₹180,000

----------------solution-----------


select departmentid,count(*) as emp_count from employees group by departmentid having emp_count > 3
select departmentid,avg(salary) as avg_sal from employees group by departmentid having avg_sal > 
select departmentId, sum(salary) as total_sal from employees group by departmentid having total_sal > 150000
select departmentid, count(*) as emp_count, max(salary) as maxx_sal from employees group by departmentid having emp_count >= 3 and  maxx_sal > 70000
select departmentid, count(*) as emp_count, avg(salary) as avg_sal,sum(salary) as total_sal from employees group by departmentid having emp_count > 2 and avg_sal > 55000 and total_sal > 180000


----------------Next: Revision 7 — CASE WHEN

Q1. Display FirstName, Salary, and a Salary_Category:

≥ 70,000 → High
50,000–69,999 → Medium
< 50,000 → Low

Q2. Display FirstName, Salary, and:

Salary ≥ 60,000 → Eligible
Otherwise → Not Eligible

Q3. Display FirstName, DepartmentID, and:

Department 1 → IT
Department 2 → HR
Department 3 → Finance
Otherwise → Other

Q4. Display FirstName, Salary, and:

≥ 80,000 → Excellent
≥ 60,000 → Good
≥ 50,000 → Average
Otherwise → Below Average

Q5. Display FirstName, Salary, and Bonus:

Salary ≥ 70,000 → 15% bonus
Salary ≥ 60,000 → 10% bonus
Salary ≥ 50,000 → 5% bonus
Otherwise → 0

Q6 — Medium

Display:

FirstName
Salary
Salary_Category

Rules:

Salary ≥ 75,000 → A
Salary ≥ 60,000 → B
Salary ≥ 50,000 → C
Otherwise → D
Q7 — Medium

Display:

FirstName
Salary
DepartmentID
Employee_Level

Rules:

Salary ≥ 70,000 AND DepartmentID = 1 → Senior IT
Salary ≥ 70,000 → Senior
Salary ≥ 50,000 → Mid-Level
Otherwise → Junior

Hint: Youll need AND.

Q8 — Medium/Hard

Display:

FirstName
Salary
Performance

Rules:

Salary ≥ 70,000 → Excellent
Salary ≥ 60,000 → Good
Salary ≥ 50,000 → Average
Otherwise → Needs Improvement

Also create a second column Bonus_Percentage:

Excellent → 15
Good → 10
Average → 5
Needs Improvement → 0

Use CASE twice.

Q9 — Hard

Display:

FirstName
Salary
DepartmentID
Category

Rules:

Department 1:
Salary ≥ 70,000 → IT-Senior
Otherwise → IT-Junior
Department 2:
Salary ≥ 60,000 → HR-Senior
Otherwise → HR-Junior
All other departments → Other

🔥 This is a nested CASE question.

Q10 — Hard / Interview Style

Display:

FirstName
Salary
DepartmentID
Salary_Category
Bonus

Rules:

Salary Category:

Salary ≥ 75,000 → High
Salary ≥ 60,000 → Medium
Otherwise → Low

Bonus:

High + Department 1 → 20% of salary
High + other departments → 15% of salary
Medium → 10% of salary
Low → 5% of salary

---------------solution----------

select firstname,salary,
	case 
		when salary >= 70000 then 'high'
        when salary between 50000 and 69999 then 'medium'
        else 'low'
	end as Salary_category
from employees

select firstname,salary,
	case
		when salary > 60000 then 'eliglible'
        else 'not eliglible'
	end as salary_eligibility
 from employees
 
 select firstname,departmentid,
	case
		when departmentid = 1 then 'IT'
        when departmentid = 2 then 'HR'
        when departmentid = 3 then 'Finance'
        else 'other'
	end as department
 from employees
 
 select firstname,salary,
	case 
		when salary >= 80000 then 'Excellent'
        when salary >= 60000 then 'Good'
        when salary >= 50000 then 'average'
        else "below average"
	end as sal_category
 from employees
 
 select firstname,salary,
	case
		when salary >= 70000 then  salary * 0.15
        when salary >= 60000 then  salary * 0.10
        when salary >= 50000 then salary * 0.05
        else 0
	end as bonus
 from employees
 
 select firstname,salary,
	case
		when salary >= 70000 then 'A'
        when salary >= 60000 then 'B'
        when salary >= 50000 then 'C'
        else "D"
	end as salary_category
 from employees
 
 select firstname,salary,departmentid,
	case
		when salary >= 70000 and departmentid = 1 then 'Senior IT'
        when salary >= 70000 then 'Senior'
        when salary >= 50000 then 'Mid Level'
        else 'Junior'
	end as employlee_level
 from employees
 
 select firstname,salary,
	case
		when salary >= 70000 then 'excellent'
        when salary >= 60000 then 'Good' 
        when salary >= 50000 then "Average" 
        else 'Needs Improvement'
	end as performance,
    case
		when salary >= 70000 then 15
        when salary >= 60000 then 10
        when salary >= 50000 then 5
        else 0
	end as bonus_percentage
 from employees
 
-----------------🔥 DML — 10 Practice Questions

Q1 — INSERT

Insert a new employee:

EmployeeID = 112
FirstName = Rohan
Salary = 48000
DepartmentID = 3
Q2 — INSERT Multiple Rows

Insert these two employees in a single INSERT statement:

113 | Anjali | 62000 | 1
114 | Sameer | 57000 | 2
Q3 — UPDATE

Increase the salary of EmployeeID 112 by 12%.

Q4 — UPDATE with Condition

Increase the salary by 10% for all employees whose current salary is below ₹55,000.

Q5 — UPDATE with Multiple Conditions

Increase salary by 15% for employees who:

belong to Department 2
AND salary is below 60,000
Q6 — UPDATE Multiple Columns

For EmployeeID 113:

Change salary to 70,000
Change DepartmentID to 3

Do both changes in one UPDATE statement.

Q7 — DELETE with Condition

Delete all employees whose salary is below ₹45,000.

Q8 — DELETE with Multiple Conditions

Delete employees who:

belong to Department 3
AND salary is below 50,000
Q9 — UPDATE using CASE

Give employees a salary increase based on their current salary:

Salary >= 70,000 → 5% increase
Salary >= 60,000 → 8% increase
Salary >= 50,000 → 10% increase
Below 50,000     → 12% increase

Use one UPDATE statement with CASE.

Q10 — Interview-Level DML

Update salaries according to both department and current salary:

Department 1 + Salary < 60,000 → 15% increase
Department 1 + Salary >= 60,000 → 10% increase

Department 2 + Salary < 60,000 → 12% increase
Department 2 + Salary >= 60,000 → 8% increase

All other departments → 5% increase

Use one UPDATE statement with CASE.


--------------solution------------

insert into employees(employeeid,firstname,salary,departmentid) values(112,'Rohan',48000,3)

insert into employees(employeeid,firstname,salary,departmentid) values(113,"anjali",63000,1),(114,"sameer",57000,2)

update employees
set salary = salary * 1.12
where employeeid = 112

update employees
set salary = salary * 1.10
where salary < 55000

update employees
set salary = salary * 1.15
where departmentid = 2 and salary < 60000

update employees
set salary = 70000, departmentid = 3
where employeeid = 113

delete from  employees
where salary < 45000

delete from  employees
where departmentid = 3 and salary < 50000

update salary
case
	when salary >= 70000 then salary*1.05
    when salary >= 60000 then salary * 1.08
    when salary >= 50000 then salary * 1.10
    else salary * 1.12
end as salary_increase

---------------Revision 9 — JOINS


select e.employeeid,e.firstname,d.departmentname from employees e join departments d on e.departmentid = d.departmentid

select * from employees e left join departments d on e.departmentid = d.departmentid

select d.departmentid,d.departmentname,e.employeeid,e.firstname from departments d left join employees e on d.departmentid = e.departmentid

select * from employees e join departments d on e.departmentid = d.departmentid where e.salary > 60000


select d.departmentid,d.departmentname, count(*) as employee_count from employees e join departments d on e.departmentid = d.departmentid group by d.departmentid, d.departmentname

select d.departmentname,avg(e.salary) as average_salary from employees e join departments d on e.departmentid = d.departmentid group by departmentname



select e.employeeid,e.firstname,d.departmentid from employees e left join departments d on e.departmentid = d.departmentid where d.departmentid is null 

select * from employees
select e.employeeid,e.firstname as employee , m.firstname as manager,e.salary as employee_salary,m.salary as manager_salary from employees e join employees m on e.managerid = m.employeeid

select e.firstname as emp_name,e.salary as emp_salary,m.firstname as manager_name,m.salary as manager_salary from employees e join employees m on e.managerid = m.employeeid where e.salary > m.salary

select d.departmentname,max(e.salary) as highest_salary from departments d left join employees e on d.departmentid = e.departmentid
group by d.departmentname 

select * from(
select d.departmentname,count(*) as emp_count, avg(e.salary) as avg_salary from employees e join departments d on e.departmentid = d.departmentid
group by d.departmentname ) t where avg_salary > 60000

select e.employeeid,e.firstname,d.departmentname from employees e join departments d on e.departmentid = d.departmentid where d.departmentid in(
select departmentid from employees group by departmentid having count(*) >= 2
)

