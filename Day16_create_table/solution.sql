create table Students(
	StudentID int primary key,
    StudentName varchar(50),
    Age tinyint,
    course varchar(50)
)

insert into Students (StudentID,StudentName,Age,course)
Value (1,'Manish',25,"Data Engineering"),
(2,"Brijesh",24,"Devops Engineer"),
(3,"Rohit",24,"QA Tester"),
(4,"Aman",23,"Data Analyst")

select * from Students


-------------------------

Create Table Products2(
	ProductId int primary key,
    ProductName Varchar(50),
    Category Varchar(30),
    Price Decimal(10,2)
)

insert into Products2 (ProductId,ProductName,Category,Price)
Value (1,"Mobile","Electronic",12999),
(2,"Tshirt","Clothing",999),
(3,"Shoes","Footwear", 1999),
(4,"Study Table","Furniture",9999)

select * from Products2


---------------

Create Table Employees(
	EmployeeId int Primary key,
    FirstName varchar(20),
    LastName varchar(25),
    Salary decimal(10,2),
    Department Varchar(50)
)

Insert into Employees(Employeeid,Firstname,Lastname,Salary,Department)
Values (101,"Manish","Madeshia",30000,"Data Engineer Department"),
(102,"Bipin","Madheshiya",15000,"Interior Department"),
(103,"Brijesh","Kori",85000,"Devops Department"),
(104,"Rohit","Ghongade",35000,"QA Department")

select * from employees

------------------
Create Table Customers(
	CustomerId int Primary key,
    CustomerName Varchar(25),
    Email Varchar(50),
    City Varchar(25),
    Age tinyint
)

Insert into Customers(CustomerId,CustomerName,Email,City,Age)
Values (1001,"Seco","seco@gmail.com","Mumbai",50),
(1002,"Karan Cables","karancable@gmail.com","Palghar",45),
(1003,"Mamta Light","mamtalights@gmail.com","Pune",50),
(1004,"Kolico Wear","Kolicowear@gmail.com","Surat",40),
(1005,"Manish Auto","manishauto@gmail.com","Indore",44)

select * from customers


---------------------

Create Table Orders(
	OrderId Int Primary key,
    CustomerId int ,
    ProductName Varchar(50),
    Quantity int,
    OrderDate Date,
    TotalAmount Decimal(10,2)
)

Insert into Orders(OrderId,CustomerId,ProductName,Quantity,OrderDate,TotalAmount)
Values (101,1001,"Mobile",1,'2024-06-01',15000),
(102,1002,"Tshirt",2,"2024-01-22",25000),
(103,1003,"Shoes",2,"2024-02-22",35000),
(104,1004,"Study Table",5,"2025-01-25",39284)

select * from Orders