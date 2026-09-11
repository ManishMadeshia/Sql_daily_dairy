------------question--------------
Q1 Create a table Employees_Default with:

EmployeeID INT as PRIMARY KEY
FirstName VARCHAR(50)
City VARCHAR(50) with default value 'Mumbai'
Salary DECIMAL(10,2) with default value 30000

Q2 Insert an employee into Employees_Default by providing only EmployeeID and FirstName. Verify the default values.

Q3 Change the default city of Employees_Default from 'Mumbai' to 'Pune'.

Q4 Insert an employee with an explicitly specified city and salary. Verify that the explicit values override the defaults.

Q5 Remove the default value from the Salary column.

---------------solution------------


create table employees_default(
employeeid int primary key,
firstname varchar(50),
city varchar(50) default 'Mumbai',
salary decimal(10,2) default 30000
)

insert into employees_default (employeeid,firstname)
value (1,"manish")

select * from employees_default

alter table employees_default
modify column city varchar(50) default  'pune'

insert into employees_default(employeeid, firstname, city, salary)
values (2,"jignesh",'USA',75000)

alter table employees_default
modify column salary decimal(10,2)