
-----------------question--------------

Q1 ⭐

Create Students_Check with:

StudentID → INT, Primary Key
StudentName → VARCHAR(50)
Age → INT, must be 18 or above

Then insert 3 valid students and 1 invalid student.

Q2 ⭐

Create Products_Check with:

ProductID → Primary Key
ProductName → VARCHAR(50)
Price → DECIMAL(10,2), must be greater than 0

Insert 3 valid products.

Q3 ⭐⭐

Create Employees_Check with:

EmployeeID → Primary Key
FirstName → VARCHAR(50)
Salary → DECIMAL(10,2), must be greater than or equal to 20,000
Age → INT, must be between 18 and 60
Q4 ⭐⭐

Create Orders_Check with:

OrderID → Primary Key
Quantity → INT, must be greater than 0
Amount → DECIMAL(10,2), must be greater than 0
Q5 ⭐⭐⭐

Create Employees_Check2 with:

EmployeeID → Primary Key
FirstName → VARCHAR(50)
Gender → VARCHAR(10), allowed values only Male or Female
Salary → DECIMAL(10,2), must be greater than 0


Q6 ⭐

In the existing Employees table, add a CHECK constraint so that:

Salary > 0
Q7 ⭐

In the existing Products table, add a CHECK constraint so that:

Price > 0
Q8 ⭐⭐

In the existing Employees table, add a constraint so that:

Salary >= 20000

-----------solution-------------
create table students_check(
studentid int primary key,
studentname varchar(50),
age int check(age>=18)
)

insert into students_check(studentid,studentname,age)
values (1,"manish",22),
(2,"priya",23),
(3,"mans",17)


create table product_check(
productid int primary key,
productname varchar(50),
price decimal(10,2) check (price>0)
)

insert into product_check(productid,productname,price)
values (1,"mobile"2222)

create table employee_check(
employeeid int primary key,
firstname varchar(50),
salary decimal(10,2) check (salary >=20000),
age int check (age between 18 and 60)
)

insert into employee_check(employeeid,firstname,salary,age)
values(1,"manish",22222,18)

create table orders_check(
orderid int primary key,
quantity int check (quantity > 0),
amount decimal(10,2) check (amount > 0)
)

insert into orders_check(orderid,quantity,amount)
values(1,2,3333),
(2,0,222)


CREATE TABLE employees_checks2 (
    employeeid INT PRIMARY KEY,
    firstname VARCHAR(50),
    gender VARCHAR(10) CHECK (gender IN ('male', 'female')),
    salary DECIMAL(10, 2) CHECK (salary > 0)
);


alter table employees
modify column salary int,
add constraint chk_salary check(salary>0)

alter tbale products
modify column price int,
add constraint chk_price check(price>0)

alter table employee
modify column salary decimal(10,2)
add constraint sal_chk check(salary>=200000=)