-------------update question-----------


1. Update employee 102 salary to 60000.
2. Change department of employee 108 from Sales to IT (DepartmentID = 1).
3. Increase salary of employee 105 by 5000.
4. Update city of CustomerID 1 from Mumbai to Navi Mumbai.
5. Change ProductID 5 price to 15000.
6. Update all employees in DepartmentID 1 and increase salary by 10%.
7. Change Gender of EmployeeID 102 to Male.
8. Update all Electronics products and increase price by 5%.
9. Update ManagerID of EmployeeID 110 to 106.
10. Set salary to 70000 for employees earning less than 50000.


---------------delete question-------------

Delete employee with EmployeeID = 110.
Delete customer with CustomerID = 5.
Delete product with ProductID = 5.
Delete orders having Amount less than 18000.
Delete employees hired after 2024-01-01.
Delete customers from Chennai.
Delete products from Furniture category.
Delete employees whose salary is below 50000.
Delete orders handled by EmployeeID = 102.
Delete all records from OrderDetails where Quantity = 1.


-------------------truncate---------------------

Assume these tables exist:

TestEmployees
TempOrders
BackupCustomers


1. Remove all records from TestEmployees using TRUNCATE.
2. Remove all records from TempOrders.
3. Remove all records from BackupCustomers.
4. What happens to table structure after TRUNCATE?
5. Can TRUNCATE use WHERE clause?
6. Is TRUNCATE faster than DELETE?
7. What happens to identity values after TRUNCATE?
8. TRUNCATE Employees table.
9. TRUNCATE Products table.
10. TRUNCATE Departments table.

---------------drop--------------

Drop table TestEmployees.
Drop table TempOrders.
Drop table BackupCustomers.
Drop table CustomerOrders.
Drop table TopEarners.
Drop table HighSalaryEmployees.
Drop table IT_Employees.
What happens to data after DROP?
Difference between DROP and TRUNCATE?
Drop an entire database named CompanyDB_Test.