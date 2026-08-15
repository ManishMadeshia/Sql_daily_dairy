#select question solution :

select * from employees;
select firstname,salary from employees;
select * from departments;
select * from customers;
select productName,price from products;
select employeeID, firstname,departmentID from employees;


#distinct question solution

select distinct departmentID from employees;
select distinct city from customers;
select distinct category from products;
select distinct gender from employees;
select distinct employeeid from orders;
select distinct customerID from orders;


#where question solution


select * from employees where salary > 60000;
select * from employees where departmentId = 1
select * products where price > 10000
select * from customerrs where city = 'mumbai'
select * from orders where amount > 25000
select * from employees where hireDate > '2023-01-01'


# order by question solution

select * from employees order by salary asc
select * from employees order by salary desc
select * from products order by price desc;
select * from customers order by customerName asc
select * from orders order by amount desc;
select * from employees order by hiredate asc

# and operator question solution

select * from employees where salary > 50000 and departmentId = 1
select * from customers where city = 'mumbai' and country = 'india'
select * from products where category = 'electronics' and price > 20000
select * from orders where amount > 20000 and employeeId = 105
select * from employees where hiredate > '2025-01-01' and salary > 60000
select * from employees where gender = 'female' and salary > 50000


#or operator question solution

select * from employees where departmentid = 1 or departmentid = 2
select * from customers where city = 'mumbai' or city = 'delhi'
select * from products where price > 30000 or price < 5000
select * from employees where salary > 70000 or gender = 'female'
select * from orders where employeeId = 102 or employeeId = 105
select * from employees where year(hireDate) = 2023 or year(hireDate) = 2024


-----------NOT OPERATOR QUESTION SOLUTON-----------

SELECT * FROM EMPLOYEES WHERE DEPARTMENTID != 1
SELECT * FROM CUSTOMERS WHERE CITY != 'MUMBAI'
SELECT * FROM PRODUCTS WHERE CATEGORY != 'ELECTRONIC'
SELECT * FROM ORDERS WHERE EMPLOYEEID != 105
SELECT * FROM EMPLOYEES WHERE SALARY <= 60000
SELECT * FROM EMPLOYEES WHERE GENDER = 'FEMALE' AND DEPARTMENTID != 2


------------- BETWEEN-------------

SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 50000 AND 70000
SELECT * FROM PRODUCTS WHERE PRICE BETWEEN 5000 AND 30000
SELECT * FROM ORDERS WHERE AMOUNT BETWEEN 15000 AND 30000
SELECT * FROM EMPLOYEES WHERE YEAR(HIREDATE) BETWEEN 2022 AND 2024
SELECT * FROM EMPLOYEES WHERE EMPLOYEEID BETWEEN 103 AND 108
SELECT * FROM CUSTOMERS WHERE CUSTOMERID BETWEEN 2 AND 5


-----------IN---------------------

SELECT * FROM EMPLOYEES WHERE DEPARTMENTID IN (1,2,3)
SELECT * FROM CUSTOMERS WHERE CITY IN ('MUMBAI','PUNE','DELHI')
SELECT * FROM ORDERS WHERE EMPLOYEEID IN (102,103)
SELECT * FROM PRODUCTS WHERE CATEGORY IN ('ELECTRONIC','FURNITURE')
SELECT * FROM EMPLOYEES WHERE EMPLOYEEID IN (101,103,105)
SELECT * FROM ORDERS WHERE ORDERID IN (1001,1004,1008)

------------NULL OPERATOR--------

SELECT * FROM EMPLOYEES WHERE MANAGERID IS NULL
SELECT * FROM EMPLOYEES WHERE MANAGERID IS NOT NULL
SELECT COUNT(*) AS C FROM EMPLOYEES WHERE MANAGERID IS NULL
SELECT * FROM EMPLOYEES WHERE MANAGERID IS NULL;
SELECT * FROM EMPLOYEES WHERE MANAGERID IS NULL
SELECT EMPLOYEEID,FIRSTNAME,MANAGERID FROM EMPLOYEES WHERE MANAGERID IS NULL


