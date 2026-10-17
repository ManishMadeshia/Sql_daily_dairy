
select * from employees where salary > (
select avg(salary) from employees)

select * from employees where salary =(
select salary from employees order by salary desc limit 1)

select * from employees where salary <(
select min(salary) from employees where department_id = 1)

select * from employees where salary =(
select salary from employees order by salary desc limit 1)

select * from products where price >(
select avg(price) from products)


select price from products where price <(
select max(price) from products)

select * from employees where emp_id IN (
select emp_id from employee_projects where project_id in(
select project_id from projects where project_budget >= 200000) order by emp_id)

select department_id from employees where emp_id in(
select emp_id from employees where salary > 80000)

select * from customers where customer_id in(
select customer_id from orders where status in ('cancelled' , 'pending')
)

select * from employees where department_id in(
select department_id from employees where emp_name in ('Neha','Priya','Arjun'))

select * from employees where salary > any(
select salary from employees where department_id = 2)

select * from employees where salary > all(
select salary from employees where department_id = 2)

--Find employees earning less than ANY employee in department 3.

select * from employees where salary < any(
select salary from employees where department_id = 3)

select * from employees where salary < all(
select salary from employees where department_id = 3)

select * from products where price > any(
select price from products where category = 'furniture')

select * from departments;
SELECT * FROM Projects;

select * from projects where project_budget > any(
select budget from departments where location = 'pune')

-----------------

SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Projects;
SELECT * FROM Employee_Projects;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Order_Items;



select emp_id , department_id, salary from employees where (department_id , salary) in ( 
select department_id, max(salary) as maxx from employees group by department_id)

select * from employees where (department_id , salary) in(
select department_id, salary from employees where hire_date < '2021-01-01')

select * from products where (category,price) in(
select category, max(price) as maxx from products group by category)


select project_id from employee_projects where (emp_id) in(
select emp_id from employee_projects where hours_worked > 150)


select * from customers where (customer_id,city) in(
select customer_id, city from customers where customer_id in(
select customer_id from orders where status = 'Delivered'))

select * from order_items where (order_id,product_id) in(
select order_id, product_id from order_items where order_id = 1001)


-----------correlated

