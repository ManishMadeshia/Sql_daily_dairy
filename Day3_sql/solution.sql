
1. insert into departments(departmentID,DepartmentName)
values (6,'operations')

2. insert into employees(employeeId,firstName,lastname,gender,salary,hiredate,departmentid,managerid) 
values (112,'anjali','shah','female',58000,'2024-07-01',2,103)

3. insert into employees(employeeId,firstName,lastname,gender,salary,hiredate,departmentid,managerid) 
values (112,'anjali','shah','female',58000,'2024-07-01',2,103)

4. insert into customers (customerid,customername,city,country)
values (6,'tech solution','hyderabad','india')

5. insert into customers(customerid,customername,city,country)
values (7,'Bright Ltd', 'kolkata', 'india'),
(8,'future tech','ahmedabad','india')

6. insert into products(productid,productname,category,price)
values (6,'monitor','electronics',15000)

7. insert into products(productid,productname,category,price)
values (7,'keyboard','electronics',1500),
(8,'desk','furniture',8000)

8. insert into orders (orderid,customerid,employeeid,orderdate,amount)
values(1009,6,105,'2024-04-01',35000)

9. insert into orderdetails(orderdetailid,orderid,productid,quantity)
values(10,1009,6,2)

--------insert using select----------

10. 
create table IT_Employees(
employeeID int,
firstname varchar(50),
salary decimal(10,2));

insert into It_employees
select employeeid, firstname,salary from employees where departmentid = 1


---------------------

11. 


insert into highsalaryemployees
select employeeid,firstname,salary
from employees
where salary > 60000

select * from highsalaryemployees

12.

create table salesemployees(
	employeeid int,
    firstname varchar(20),
    departmentid int
)

insert into salesemployees
select employeeid, firstname,departmentid from employees where departmentid = 4

13. 

create table recentemployees(
    employeeid int,
    firstname varchar(20),
    hiredate date
)


insert into recentemployees
select employeeid,firstname,hiredate from employees 
where hiredate >= '2023-01-01'

select * from recentemployees


14. 

create table electronicsproducts(
	productid int,
    productname varchar(20),
    price decimal(10,2)
)

insert into electronicsproducts
select productid,productname,price from products 
where category = 'electronics'

select * from electronicsproducts

15. 

create table TopEarners(
	employeeid int,
    firstname varchar(20),
    salary decimal(10,2),
    departmentid int
)

insert into topearners
select employeeid,firstname,salary,departmentid from employees 
order by salary desc limit 3

select * from topearners