
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

----------------------Revision 10 — UNION & UNION ALL
Q1

Combine the employee names from both tables into one result.

Q2

Combine the employees from both tables, including duplicate rows.

Q3

Combine employee IDs from both tables but return each ID only once.

Q4

Combine employees from both tables and display:

EmployeeID
FirstName
Salary
Q5

Combine employees from both tables and sort the final result by Salary descending.

Q6

Combine employees from both tables and display only employees whose salary is greater than ₹60,000.

Q7

Combine the FirstName values from both tables and add a column showing the source:

Employees
IT_Employees
Q8

Find all employee IDs that exist in both tables.

Q9 — Hard

Combine employees from both tables, remove duplicates, and display only the top 5 highest-paid employees.

Q10 — Interview 🔥

Combine the two tables while keeping duplicate records, then calculate the total number of rows in the final combined result.



----------------solution---------------


select firstname from employees
union 
select firstname from IT_employees

select firstname from employees
union all
select firstname from IT_employees

select employeeid from employees
union 
select employeeid from it_employees

select employeeid,firstname,salary from employees
union all
select employeeid,firstname,salary from it_employees


select employeeid,firstname,salary from employees
union all
select employeeid,firstname,salary from it_employees
order by salary desc

select employeeid,firstname,salary from employees
union all
select employeeid,firstname,salary from it_employees
where salary > 60000


select employeeid,firstname,salary, "employees" as source from employees 
union all
select employeeid,firstname,salary, "IT_employees" as source from it_employees 

select employeeid from IT_employees
intersect
select employeeid from employees


select distinct employeeid,firstname,salary from(
select employeeid,firstname,salary from employees
union 
select employeeid,firstname,salary from it_employees
) t order by salary desc limit 5


select count(*) as total_no_of_row from (
select employeeid,firstname,salary from employees
union all 
select employeeid,firstname,salary from IT_employees
) t




------------------🔥 PK + Composite Key + AUTO_INCREMENT — 12 Questions
Q1 — Basic

Create a Students table with:

StudentID → unique identifier
FirstName
LastName
Age

Make sure StudentID cannot be duplicate or NULL.

Q2 — AUTO_INCREMENT

Create an Employees_Practice table with:

EmployeeID
FirstName
Salary

The EmployeeID should automatically generate the next number whenever a new employee is inserted.

Q3 — AUTO_INCREMENT Insert

Using your Employees_Practice table, insert:

Manish | 65000
Rahul  | 55000
Priya  | 70000

Do not manually provide EmployeeID.

Q4 — Verify AUTO_INCREMENT

Write a query to display all employees ordered by their generated EmployeeID from lowest to highest.

Q5 — Composite Key

Create an OrderDetails_Practice table:

OrderID
ProductID
Quantity
Price

The same OrderID + ProductID combination must not be allowed twice.

Q6 — Understand Composite Key

Suppose this data exists:

OrderID | ProductID
--------|----------
101     | 1
101     | 2
102     | 1

Can you insert:

101 | 1

Explain why or why not.

Q7 — Composite Key + Other Column

Create a StudentCourses table:

StudentID
CourseID
EnrollmentDate

A student can take many courses, and a course can have many students, but the same student cannot enroll in the same course twice.

Design the table correctly.

Q8 — AUTO_INCREMENT + PRIMARY KEY

Create a Products_Practice table:

ProductID
ProductName
Price
CreatedDate

Requirements:

ProductID automatically generates values.
ProductID uniquely identifies each product.
ProductName cannot be NULL.
Price must be greater than 0.
Q9 — ALTER Existing Table

Suppose you already have:

Employees_Practice(
    EmployeeID INT,
    FirstName VARCHAR(50),
    Salary DECIMAL(10,2)
);

Write the ALTER TABLE statement to make EmployeeID the primary key.

Q10 — Add AUTO_INCREMENT to Existing PK

Suppose EmployeeID is already a primary key:

EmployeeID INT PRIMARY KEY

Write the ALTER TABLE statement to make it AUTO_INCREMENT.

Q11 — Hard 🔥

Create a SalesDetails table with:

SaleID
ProductID
Quantity
SalePrice

Requirements:

SaleID + ProductID together uniquely identify a row.
Quantity cannot be NULL.
SalePrice must be greater than 0.

Design the complete table.

Q12 — Interview Level 🔥🔥

You are designing an OrderDetails table.

One order can contain many products.

For example:

OrderID | ProductID | Quantity
--------|-----------|---------
1001    | 5         | 2
1001    | 8         | 1
1001    | 10        | 4
1002    | 5         | 3

Answer these:

A. What should be the primary key?
B. Should OrderID alone be the primary key? Why/why not?
C. Should ProductID alone be the primary key? Why/why not?
D. Write the complete CREATE TABLE statement.


-----------------solution------------

create database tmp_pp

use tmp_pp

create table Students(
studentid int primary key,
firstname varchar(50),
lastname varchar(50),
age tinyint
)

insert into students values(1,"Manish","Madeshia",22),(2,"anish","Madeshia",24),(3,"Manisha","Madeshia",25)
select * from students


create table employees_practice(
employeeid int auto_increment primary key,
firstname varchar(50),
salary decimal(10,2)
)

insert into employees_practice(firstname,salary) values("manish",23443),("nahdi",2434)

-------auto increment

insert into employees_practice(firstname,salary) values("dinesh",23432),("ganesh",43435)

select * from employees_practice

-----composite_key-----

create table orderDetails_Practice(
orderid int not null,
productid int not null,
Quantity int,
Price decimal(10,2),
primary key(orderid,productid)
)

insert into orderDetails_Practice(orderid,productid,quantity,price)
values (1,101,3,333),(1,102,4,343),(1,103,5,444),(2,101,3,222),(2,102,5,666),(2,103,6,334)

select * from orderDetails_Practice


create table studentcourse(
studentid int not null,
courseid int not null,
enrollmentDate date,
primary key(studentid,courseid)
)


insert into studentcourse(studentid,courseid,enrollmentdate) value(101,1,'2026-09-10'),
(101,2,'2026-09-10'),
(101,3,'2026-09-10'),
(101,4,'2026-09-10'),
(102,1,'2026-09-20'),
(102,2,'2026-09-20'),
(102,3,'2026-09-20'),
(102,4,'2026-09-20'),
(103,1,'2026-08-10'),
(103,2,'2026-08-10'),
(103,3,'2026-08-10'),
(103,4,'2026-08-10')

select * from studentcourse


8. create table product_practice(
productid int auto_increment primary key,
productname varchar(50),
price decimal(10,2) check (price >0),
createdDate date default (current_date())
)

insert into product_practice(productname,price,createdDate) 
value("Mobile",9999,Default),("Mobile case",999,Default),("Mobile charger",899,Default),("Camera",99999,'2026-09-30'),
("lens",6666,Default)

select * from product_practice


9. Alter table employees_practice
Add primary key (employeeid)

alter table employees_practice
add constraint Auto_incre
auto_increment (employeeid)


create table SalesDetails(
salesid int not null,
productid int not null,
quantity int not null,
saleprice decimal(10,2) check (saleprice>0),
primary key(salesid,productid)
)


create table orderdetails(
orderid int,
productid int,
quantity int,
primary key(orderid,productid)
)



---------------foreign key question---------

'''

Q1
Create a Departments_Practice table:
- DepartmentID → INT, Primary Key
- DepartmentName → VARCHAR(50), NOT NULL

Q2
Create an Employees_Practice table:
- EmployeeID → INT, Primary Key
- FirstName → VARCHAR(50)
- DepartmentID → INT
- DepartmentID must reference Departments_Practice.

3.
Insert these departments:
1 → IT
2 → HR
3 → Finance

4. Insert an employee:
EmployeeID = 101
FirstName = Manish
DepartmentID = 1



Q5
Try inserting:
EmployeeID = 102
FirstName = Rahul
DepartmentID = 99

Explain what happens and why.


Q6
Create Projects_Practice:
- ProjectID → Primary Key
- ProjectName → NOT NULL
- DepartmentID
- DepartmentID must be related to Departments_Practice.

Q7
Create Employees_Test where:
- EmployeeID → Primary Key
- DepartmentID → cannot be NULL
- DepartmentID must reference Departments_Practice.

Q8
An existing table Employees_Test already has DepartmentID.
Add the required relationship with Departments_Practice using an ALTER TABLE.


Q9
Create Orders_Practice:
- OrderID → Primary Key
- CustomerID
- CustomerID must reference Customers


Q10
Create OrderDetails_Practice where:
- OrderID
- ProductID
- Quantity
- (OrderID, ProductID) → Composite Primary Key
- OrderID must reference Orders
- ProductID must reference Products


Q11
Create an employee table where deleting a department automatically deletes all employees belonging to that department.



Q12 — Interview Level 🎯
Explain:
Why is a Foreign Key important in a relational database? What problem can occur if we dont use it?

'''

-------------------solution----------------

1. create table departments_practice(
	departmentid int primary key,
    departmentname varchar(50) not null
)


2. create table employee_practice(
	employeeid int primary key,
    firstname varchar(50),
    departmentid int,
    foreign key(departmentid)
		references departments_practice(departmentid)
)

3. insert into departments_practice(departmentid,departmentname)
values(1,"HR"),(2,"IT"),(3,"SALES"),(4,"Audit")


4. insert into employee_practice(employeeid,firstname,departmentid) values(1,"manish",1),(2,"bipin",3),(3,"mohan",2),(4,"savita",4),(5,"dj shah",2)


5. value cant be inserted reason departmentid 99 the value which we are inserting is not present in departmentid that why value cant be enter this phenomenal call referential inte

6. create table projects_practice(
projectid int primary key,
projectname varchar(50) not null,
departmentid int,
foreign key(departmentid)
references departments_practice(departmentid)
)

7. create table employees_test(
employeeid int primary key,
departmentid int not null,
foreign key(departmentid)
references departments_practice(departmentid)
)

8. alter table employees_test
add constraint fk_departmentid
foreign key(departmentid)
references departments_practice(departmentid)

9. create table orders_practice(
orderid int primary key,
customerid int,
foreign key(customerid)
references customers(customerid)
)

10. 
create table orderDetails_practice(
orderid int,
productid int,
quantity int,
primary key(orderid,productid),
foreign key(orderid)
references orders(orderid),
foreign key(productid)
references products(productid)
)

11. 

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Departments_Practice(DepartmentID)
        ON DELETE CASCADE
);

12. foreign key is a column in table that help us create or mantain relationship with other table eg forign key of the existing table refer to primary key of other tbale
why imp - it helps us to maintain refernatial intergity meaning the value which are present in primary tbale are only allow to enter the value that exist in primary key of other tbale other value cant be update 

