update employees
set salary = 60000
where employeeid = 102

update employees
set departmentid = 1
where employeeid = 108

update employees
set salary = salary + 5000
where employeeid = 105

update customers
set city = 'navi mumbai'
where customerid = 1

update products
set price = 1500
where productid = 5

update employees
set salary = salary * 1.10
where departmentid = 1

update employees
set gender = 'male'
where employeeid = 102

update products 
set price = price * 1.05
where category = 'electronics'

update employees
set managerid = 106
where managerid = 110


update employees
set salary = 70000
where salary < 50000


-----------------------delete solution------------------


delete from employees
where employeeid = 110

delete from customers
where customerid = 5

delete from products 
where productid = 5

delete from orders
where amnount < 18000

delete from employees
where hire_date < '2024-01-01'

delete from customers
where city = 'chennai'

delete from products
where category = 'furniture'

delete from employees
where salary < 15000

delete from orders where employeeid = 102

delete from orderdetails where quantity = 1

-----------------truncate solution------------

truncate table testemployees
truncate table temporders
truncate table backupcustomers

4. when we use truncate on table the data from table gets delete but it metadata (table schema) remain same

5. we cannot use where with truncate as it will throw error in db engine saying synax error,
the best we can do if we want to use where it to use with delete 


6. yes truncate truncate is faster than delete reason: if we are using delete than it scan the tbale row by row checks constraints and delete each record one at a time
but using truncate it directly unlinks the data pages assigned to the tbale from the file system.

7. the identity value(auto increment) reset to 1

8. truncate table employees
9. truncate table products
10. truncate department

---------------drop solution----------

1. drop table testemployees
2. drop table temporders.
3. drop table backupcustomers.
4. drop table customerorders.
5. drop table topearners.
6. drop table highsalaryemployees.
7. drop table it_employees.
8. after using drop the data and metadata both gets delete
9. drop delete both data as well as meta data , but in truncate the data get delete from table and metadata remain same.
10. drop database companydb_test