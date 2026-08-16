---------insert------


1. Insert a New Department

Add a new department:

DepartmentID = 6
DepartmentName = 'Operations'
2. Insert a New Employee

Add:

EmployeeID = 111
FirstName = 'Vikas'
LastName = 'Mishra'
Gender = 'Male'
Salary = 62000
HireDate = '2024-06-15'
DepartmentID = 6
ManagerID = 101
3. Insert Another Employee

Add:

EmployeeID = 112
FirstName = 'Anjali'
LastName = 'Shah'
Gender = 'Female'
Salary = 58000
HireDate = '2024-07-01'
DepartmentID = 2
ManagerID = 103
4. Insert a New Customer

Add:

CustomerID = 6
CustomerName = 'Tech Solutions'
City = 'Hyderabad'
Country = 'India'
5. Insert Multiple Customers

Insert:

CustomerID	CustomerName	City
7	Bright Ltd	Kolkata
8	Future Tech	Ahmedabad

Country = India

6. Insert a New Product

Add:

ProductID = 6
ProductName = 'Monitor'
Category = 'Electronics'
Price = 15000
7. Insert Multiple Products

Insert:

ProductID	ProductName	Category	Price
7	Keyboard	Electronics	1500
8	Desk	Furniture	8000
8. Insert a New Order

Add:

OrderID = 1009
CustomerID = 6
EmployeeID = 105
OrderDate = '2024-04-01'
Amount = 35000
9. Insert an Order Detail

Add:

OrderDetailID = 10
OrderID = 1009
ProductID = 6
Quantity = 2
10. Insert Using SELECT (Interview Question ⭐)

Create a new table:

CREATE TABLE IT_Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    Salary DECIMAL(10,2)
);

Insert all IT department employees from Employees table into IT_Employees using INSERT INTO ... SELECT.


----------5 practice questions on INSERT INTO ... SELECT, starting from easy and moving toward Data Engineering style.------
11. 
Create a table called HighSalaryEmployees.

Structure:

EmployeeID
FirstName
Salary

12. 
Create a table called SalesEmployees.

Structure:

EmployeeID
FirstName
DepartmentID

Insert all employees belonging to the Sales department (DepartmentID = 4).

13. 
Create a table called RecentEmployees.

Structure:

EmployeeID
FirstName
HireDate

Insert all employees hired after 2023-01-01.

14. Create a table called ElectronicsProducts.

Structure:

ProductID
ProductName
Price

Insert all products whose category is Electronics from the Products table.

15.

Create a table called TopEarners.

Structure:

EmployeeID
FirstName
Salary
DepartmentID

Insert the top 3 highest-paid employees from the Employees table.