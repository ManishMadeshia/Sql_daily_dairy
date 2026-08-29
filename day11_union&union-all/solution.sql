select Firstname from employees
union 
select customername from customers

select Firstname from employees
union all
select customername from customers

select city from customers
union all
select 'mumbai' as city

select * from products where category = 'furniture'
union 
select * from products where category = 'electronics'

select * from products where category = 'furniture'
union all
select * from products where category = 'electronics'

select employeeid from employees
union
select employeeid from orders

select employeeid from employees
union all
select employeeid from orders

select customerid from customers
union 
select customerid from orders

select customerid from customers
union all
select customerid from orders

select departmentid from employees 
union 
select departmentid from departments 

select departmentid from employees 
union all
select departmentid from departments 

select employeeid from employees
union
select employeeid from orders

select employeeid from employees
union all
select employeeid from orders 

select productname as name from products
union
select customername from customers


select firstname as name from employees
union 
select customername from customers 
order by name asc