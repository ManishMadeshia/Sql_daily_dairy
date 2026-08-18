-----------sum-----------

select count(*) as c from employees
select count(*) as c from customers
select count(*) as c from employees where departmentid = 1
select count(*) as c from employees where gender = 'female'
select count(*) as c from employees where employeeid = 105


----------------avg------------

select avg(salary) as avg_sal from employees
select avg(amount) as avg_amount from orders
select avg(salary) as avg_female_sal from employees where gender = 'female'
select avg(price) as avg_price from products
select avg(salary) as avg_sal from employees where departmentid = 1


---------------min--------------
select min(salary) as miin from employees
select min(price) as p from products
select min(hire_date) as m from employees
select min(amount) as a from orders
select min(quantity) as q from orderdetails



---------------max-----------
select max(salary) as m from employees
select max(price) as p from products
select max(hire_date) a m from employees
select max(amount) as a from orders
select max(quantity) as q from orderdetails


----------mix quesion solution----------

select min(salary) as min_salary, max(salary) as max_salary from employees
select count(orderid) as total_order, sum(amount) as sales from orders
select avg(salary) as a, min(salary) as m , max(salary) as maxx from employees
select count(employeeID) as c , avg(salary) as a from employees
select max(amount) as max_amount from orders
select sum(quantity) as q from orderdetails
select sum(amount) as a from orders where customerID = 1
select avg(price) as p from products where category = 'electronics'
select sum(salary) as s from employees where gender = 'male'
select max(salary) from employees