#If you want to copy schema + data (create table + copies data)

Create table Table2 as
select * from table1


#if table2 already exist (copies data)

Insert into Table2
select * from table1

#copies strcuture
Create table table2 like table1


-------------------------------------

#copy all data

insert into table2
select * from table1

#selected columnn

insert into employees2(Employeeid,Firstname,Salary)
select EMployeeid,firstname, salary from employee2

#3. Copy only specific rows

INSERT INTO Employees2 (EmployeeID, FirstName, Salary)
SELECT EmployeeID, FirstName, Salary
FROM Employees
WHERE Salary >= 60000;