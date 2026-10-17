
CREATE DATABASE exists_practice;
USE exists_practice;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    manager_id INT
);

INSERT INTO customers VALUES
(1, 'Manish', 'Mumbai'),
(2, 'Rahul', 'Pune'),
(3, 'Priya', 'Mumbai'),
(4, 'Amit', 'Delhi'),
(5, 'Neha', 'Pune'),
(6, 'Karan', 'Nashik'),
(7, 'Sneha', 'Delhi');

INSERT INTO orders VALUES
(101, 1, '2026-01-10', 5000, 'Completed'),
(102, 1, '2026-02-15', 2000, 'Pending'),
(103, 2, '2026-03-01', 8000, 'Completed'),
(104, 3, '2026-03-12', 1500, 'Cancelled'),
(105, 4, '2026-04-05', 12000, 'Completed'),
(106, 5, '2026-04-15', 3000, 'Pending'),
(107, 2, '2026-05-10', 2500, 'Completed'),
(108, 6, '2026-05-20', 9000, 'Cancelled');

INSERT INTO departments VALUES
(10, 'Engineering'),
(20, 'Data'),
(30, 'HR'),
(40, 'Finance'),
(50, 'Marketing');

INSERT INTO employees VALUES
(1, 'Arjun', 10, 80000, NULL),
(2, 'Meera', 20, 95000, 1),
(3, 'Rohan', 10, 60000, 1),
(4, 'Isha', 30, 45000, 1),
(5, 'Dev', 20, 110000, 2),
(6, 'Tara', 40, 70000, 1),
(7, 'Vikram', 10, 55000, 3),
(8, 'Anaya', 30, 50000, 4);


------------------------exists-----------------
--1. Customers who have placed at least one order
select * from customers c where exists(
select 1
from orders o
where o.customer_id = c.customer_id
)


--2 Customers who have at least one completed order

select * from customers c where exists(

select 1 from orders o where c.customer_id = o.customer_id and status = 'completed')

--3 Customers who have placed an order worth more than ₹5,000

select * from customers where customer_id in(
select customer_id from orders where amount > 5000)

select * from customers c where exists(
select 1 from orders o where o.customer_id = c.customer_id and o.amount > 5000)

---4 Mumbai customers who have placed at least one order

select * from customers c where city = 'mumbai' and exists(
select 1 from orders o where o.customer_id = c.customer_id
)

--5 Customers who have at least one pending order
select * from customers c where exists(
select 1 from orders o where c.customer_id = o.customer_id and o.status = 'pending'
)

---6 Customers who placed a completed order during May 2026

select * from customers c where exists(
select 1 from orders o where o.customer_id = c.customer_id and o.status = 'completed' and o.order_date between '2026-05-01' and '2026-05-31'
)


--7 Departments that have at least one employee

select d.department_id, d.department_name from departments d where exists(
select 1 from employees e where e.department_id = d.department_id
)

--8 Departments that have at least one employee earning more than ₹90,000

select d.department_id, d.department_name from departments d where exists(
select 1 from employees e where e.department_id = d.department_id and e.salary > 90000
)

--9 Employees who have at least one direct report

--10 Customers who have both a completed order and a pending order
select * from customers
select * from orders

select * from customers c 
where exists(select 1 from orders o where o.customer_id = c.customer_id and o.status = 'completed')
and exists (
select 1 from orders o2 where o2.customer_id = c.customer_id and o2.status = 'pending'
)
