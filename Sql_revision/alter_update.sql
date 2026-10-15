
create database if not exists alter_practice

use alter_practice

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE
);

INSERT INTO Employees VALUES
(1, 'Amit', 'amit@example.com', 45000, 1, '2022-01-10'),
(2, 'Neha', 'neha@example.com', 65000, 2, '2021-05-15'),
(3, 'Rahul', 'rahul@example.com', 35000, 1, '2023-03-20'),
(4, 'Priya', 'priya@example.com', 75000, 3, '2020-07-01'),
(5, 'Karan', 'karan@example.com', 55000, 2, '2022-11-11');

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

INSERT INTO Departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(101, 'Laptop', 55000),
(102, 'Mouse', 800),
(103, 'Keyboard', 1500);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

INSERT INTO Customers VALUES
(1, 'Aarav', 'aarav@example.com'),
(2, 'Diya', 'diya@example.com'),
(3, 'Kabir', 'kabir@example.com');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1001, 1, 5000),
(1002, 2, 2500),
(1003, 1, 7000);


---1. Add a column named phone_number of type VARCHAR(15) to Employees.
alter table employees
add column phone_number varchar(25) 

--2 Add a column named bonus with datatype DECIMAL(10,2) and a default value of 0.
alter table employees
add column bonus decimal(10,2) default '0'

--3 Add two columns to Employees: city (VARCHAR(50)) and is_active (BOOLEAN) with a default value of TRUE.
alter table employees
add column city varchar(50),
add column is_active boolean default TRUE

--4 Change the employee_name columns maximum length from 50 to 100 characters.
alter table employees
modify column employee_name varchar(100)

--5 Change salary to DECIMAL(12,2).
alter table employees
modify column salary decimal(12,2)

--6 Change the email column to VARCHAR(150) and make it NOT NULL. First check whether any existing email values are NULL.

select * from employees where email is null
alter table employees
modify email varchar(150) not null

describe employees

--7 Remove the phone_number column from Employees.
alter table employees
drop column phone_number

--8 Remove the city column from Employees.
alter table employees
drop column city

--9 Remove the is_active and bonus columns from Employees.
alter table employees
drop column is_active,
drop column bonus

--10 Rename employee_name to full_name.
alter table employees
rename column employee_name to full_name

--11 Rename hire_date to joining_date.
alter table employees
rename column hire_date to joining_date

--12 Rename order_amount to total_amount in Orders.
alter table orders
rename column order_amount to total_amount

--13 Add a named CHECK constraint called chk_salary_positive to ensure employees salaries are greater than zero.
select * from employees
alter table employees
add constraint chk_salary_positive check(salary>0)

--14 Add a named UNIQUE constraint called uq_employee_email to prevent duplicate employee emails. First verify that the existing data contains no duplicate emails.
select email,count(*) as occurence from employees group by email

alter table employees
add constraint uq_employee_email unique(email)

--15 Add a foreign key named fk_employee_department from Employees.department_id to Departments.department_id. Ensure every non-NULL department ID in Employees exists in Departments.
alter table employees
add constraint fk_employee_department
foreign key (department_id)
references departments(department_id) 

--16 Drop the chk_salary_positive constraint created in Q13.
alter table employees
drop constraint chk_salary_positive

--18 Drop the uq_employee_email unique constraint created in Q14.
alter table employees
drop constraint uq_employee_email

--19 Drop the fk_employee_department foreign key created in Q15.
alter table employees
drop constraint fk_employee_department

--20 Increase Amits salary to ₹50,000.
update employees
set salary = 50000
where employee_id = 1

--21 Increase the salary of all employees in department 1 by ₹5,000.
update employees
set salary = salary + 5000
where department_id = 1

--22 Update the price of the product with product_id = 102 to ₹950, but only if its current price is below ₹900.
select * from products
    
update products
set price = 950
where product_id = 102 and price < 900;

--23 For employee Rahul, change the salary to ₹40,000 and department to 3.
select * from employees
update employees
set salary = 40000,
	department_id = 3
where full_name = 'Rahul'

--24 For employee Neha, change the email to neha.new@example.com and salary to ₹70,000.
update employees
set email = 'neha.new@example.com',
salary = 70000
where full_name = 'Neha'

--25 For order 1001, change the order amount to ₹6,000 and customer ID to 3.
update orders
set order_id = 1001,
total_amount = 6000
where customer_id = 1