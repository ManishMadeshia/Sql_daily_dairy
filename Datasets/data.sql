CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Sales'),
(5,'Marketing');


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Salary DECIMAL(10,2),
    HireDate DATE,
    DepartmentID INT,
    ManagerID INT,
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);


INSERT INTO Employees VALUES
(101,'Manish','Madeshia','Male',65000,'2023-01-10',1,NULL),
(102,'Rahul','Sharma','Male',55000,'2023-02-15',1,101),
(103,'Priya','Patel','Female',70000,'2022-11-01',2,101),
(104,'Amit','Verma','Male',45000,'2024-01-20',3,103),
(105,'Sneha','Singh','Female',60000,'2023-05-12',4,101),
(106,'Karan','Gupta','Male',80000,'2021-09-01',1,NULL),
(107,'Neha','Joshi','Female',52000,'2022-07-15',5,106),
(108,'Rohit','Yadav','Male',48000,'2024-02-01',4,105),
(109,'Pooja','Mehta','Female',72000,'2021-12-20',3,106),
(110,'Arjun','Kumar','Male',58000,'2023-08-18',2,103);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers VALUES
(1,'ABC Pvt Ltd','Mumbai','India'),
(2,'XYZ Corp','Delhi','India'),
(3,'Global Tech','Bangalore','India'),
(4,'Future Ltd','Pune','India'),
(5,'Smart Inc','Chennai','India');


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID)
    REFERENCES Employees(EmployeeID)
);


INSERT INTO Orders VALUES
(1001,1,105,'2024-01-10',25000),
(1002,2,105,'2024-01-15',18000),
(1003,3,108,'2024-02-01',30000),
(1004,1,102,'2024-02-10',15000),
(1005,4,108,'2024-02-15',22000),
(1006,5,102,'2024-03-01',40000),
(1007,3,105,'2024-03-05',28000),
(1008,2,108,'2024-03-10',17000);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);


INSERT INTO Products VALUES
(1,'Laptop','Electronics',50000),
(2,'Mobile','Electronics',25000),
(3,'Chair','Furniture',3000),
(4,'Table','Furniture',7000),
(5,'Printer','Electronics',12000);


CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID)
    REFERENCES Products(ProductID)
);


INSERT INTO OrderDetails VALUES
(1,1001,1,1),
(2,1001,5,2),
(3,1002,2,1),
(4,1003,3,5),
(5,1004,4,2),
(6,1005,1,1),
(7,1006,2,2),
(8,1007,5,1),
(9,1008,3,4);