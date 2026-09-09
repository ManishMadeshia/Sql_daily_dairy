No two rows can have the same value in that column.

-----------------question------------

Q1 ⭐
Create Students_UQ with:

StudentID → Primary Key
StudentName → VARCHAR(50)
Email → VARCHAR(100) and UNIQUE

Insert 3 students.

Q2 ⭐⭐
Create Employees_UQ with:

EmployeeID → Primary Key
FirstName → VARCHAR(50)
Email → VARCHAR(100) and UNIQUE
Phone → VARCHAR(15) and UNIQUE

Insert 5 employees.

Q3 ⭐⭐
Create Products_UQ with:

ProductID → Primary Key
ProductName → VARCHAR(50)
ProductCode → VARCHAR(20) and UNIQUE
Price → DECIMAL(10,2)

Insert 5 products and make sure every ProductCode is different.

Existing Table

Q4 ⭐
In the existing Customers table, make Email UNIQUE.

Q5 ⭐⭐
In the existing Employees table, make Email UNIQUE.

Q6 ⭐⭐⭐
In the existing Employees table, make Phone UNIQUE.


-------------------solution----------

create table students_uq(
studentid int primary key,
studentname varchar(20),
email varchar(100) unique
)

create table employee_uq(
employeeid int primary key,
firstname varchar(50),
email varchar(15) unique,
phone varchar(15) unique
)

create table product_uq(
productid int primary key,
productname varchar(50),
productcode Varchar(20) unique,
price decimal(10,2)
)

alter table customer
modify column email varchar(20) unique

alter table employees
modify column email varchar(20) unique

alter table employees
add constraint phone unique