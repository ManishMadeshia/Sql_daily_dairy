---------------question----------------------

Q1 ⭐

Create a table Students_NN with:

StudentID → INT, Primary Key
StudentName → VARCHAR(50), NOT NULL
Age → INT

Insert 3 students. Try inserting one student without StudentName and observe the error.

Q2 ⭐

Create a table Products_NN with:

ProductID → INT, Primary Key
ProductName → VARCHAR(50), NOT NULL
Price → DECIMAL(10,2), NOT NULL
Category → VARCHAR(30)

Insert 3 valid products.

Q3 ⭐⭐

Create Employees_NN with:

EmployeeID → INT, Primary Key
FirstName → VARCHAR(50), NOT NULL
Salary → DECIMAL(10,2), NOT NULL
DepartmentID → INT

Insert 5 employees.

Q4 ⭐⭐

Create Customers_NN with:

CustomerID → INT, Primary Key
CustomerName → VARCHAR(100), NOT NULL
Email → VARCHAR(100), NOT NULL
City → VARCHAR(50)

Insert 5 customers.

Q5 ⭐⭐⭐

Create Orders_NN with:

OrderID → INT, Primary Key
CustomerID → INT, NOT NULL
OrderDate → DATE, NOT NULL
Amount → DECIMAL(10,2), NOT NULL

Insert 5 orders.

Part B — Add NOT NULL to Existing Tables

Here the tables already exist.

Q6 ⭐

In the existing Employees table, make FirstName NOT NULL.

Q7 ⭐

In the existing Employees table, make Salary NOT NULL.

Q8 ⭐⭐

In the existing Products table, make ProductName NOT NULL.

Q9 ⭐⭐

In the existing Customers table, make CustomerName NOT NULL.

Q10 ⭐⭐⭐

In the existing Orders table, make both:

CustomerID → NOT NULL
OrderDate → NOT NULL


--------------------solution------------------

create table student_nn(
	studentid int primary key,
    studentname varchar(50) not null,
    age int
)

insert into student_nn (studentid,studentname,age)
values (5,null,23)

create table Products_nn(
	productid int primary key,
    productname varchar(50) not null,
    Price decimal(10,2) not null,
    category varchar(30)
)

insert into Products_nn(productid,productname,Price,Category)
values (1,null,33333,"electronic")

create table employee_nn(
Employeeid int primary key,
Firstname Varchar(50) not null,
salary decimal(10,2) not null,
departmentid int
)

insert into employee_nn(employeeid,firstname,salary,departmentid)
values (1,"Manish",null, 2),(2,"bipin",44444,2)

create table customers_nn(
customerid int primary key,
customername varchar(100) not null,
email varchar(100) not null,
city varchar(50)
)


create table orders_nn(
orderid int primary key,
customerid int not null,
orderdate date not null,
amount decimal(10,2) not null
)



Alter table student_nn 
modify column studentname varchar(50) null

alter table employees
modify column salary decimal(10,2) not null

alter table products 
modify column productname varchar(50) not null

alter table customers
modify column customername varchar(50) not null

alter table orders
modify column customerid not null,
orderdate not null
