Q1 Find employees who work in the same departments as employees earning more than 70,000.

select * from employees where departmentid in (
select departmentid from employees where salary > 70000)

Q2 Find employees who belong to departments where at least one employee earns less than 50,000.
select * from employees where departmentid in (
select departmentid from employees where salary < 50000)


Q3 Find products whose Category is one of the categories found in products priced above 10,000.
select * from products where productid in (
select productid from products where price > 10000)


Q4 Find customers who have placed at least one order.
select CUSTOMERID from customers where customerid in (
select customerid from orders group by customerid having COUNT(ORDERID) >= 1)

Q5 Find employees who have never placed an order.
select * from employees where employeeid not in(
Select employeeid from orders)

Q6 Find employees who belong to the same departments as Manish or Priya.
select firstname,lastname from employees where departmentid in (
select departmentid from employees where firstname = 'Manish' or firstname= 'priya')


Q7  Find products belonging to categories that have at least one product priced above 20,000.
select * from products where price in(
select price from products where price > 20000)


Q8 Find customers who placed orders handled by employees whose salary is greater than 30,000.
select * from customers where customerid in (
select customerid from orders where employeeid in(
select employeeid from employees where salary > 60000))

Q9 Find employees who work in departments where at least one employee has a salary greater than 75,000.
SELECT *
FROM Employees
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Employees
    WHERE Salary > 75000
);

Q10 Find customers who purchased products from the Electronics category.

select * from customers where customerid in(
select customerid from orders where orderid in(
select orderid from orderdetails where productid in(
select Productid from products where category = 'electronics')))