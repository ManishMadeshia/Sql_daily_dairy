-------------------inner join-------------------

select e.firstname as employee_name,d.departmentname as department_name from employees e join departments d on e.departmentid = d.departmentid
select e.firstname as emp_name, e.salary as emp_salary, d.departmentname as dept_name from employees e join departments d on e.departmentid = d.departmentid
select e.employeeid, e.salary, d.departmentname from employees e join departments d on e.departmentid = d.departmentid where d.departmentname = 'it'
select e.employeeid, e.salary, d.departmentname from employees e join departments d on e.departmentid = d.departmentid where d.departmentname = 'HR'
select c.customername,o.amount from customers c join orders o on c.customerid = o.customerid
select c.customername,o.amount,o.orderdate from customers c join orders o on c.customerid = o.customerid
select c.customername,e.firstname as employeename from orders o join customers c on o.customerid = c.customerid
join employees e on o.employeeid = e.employeeid,

select o.orderid, o.employeeid, e.salary from orders o join employees e on o.employeeid = e.employeeid
select p.productname, o.quantity as quantity from products p join orderdetails o on p.productid = o.productid
select o.orderid,p.productname, o.quantity from products p join orderdetails o on p.productid = o.productid
select p.category, sum(o.quantity) as totalqty from products p join orderdetails o on p.productid = o.productid group by p.category
select c.customername, sum(o.amount) as total_amount from orders o join customers c on o.customerid = c.customerid group by c.customername
select e.firstname, sum(o.amount) as total_sales from orders o join employees e on o.employeeid = e.employeeid group by e.firstname
select d.departmentname,avg(e.salary) as avg_salary from employees e join departments d on e.departmentid = d.departmentid group by d.departmentname

select c.customername,p.productname, os.quantity from customers c join orders o on c.customerid = o.customerid
join orderdetails os on o.orderid = os.orderid
join products p on os.productid = p.productid


--------------left join------------------

select * from employees e left join departments d on e.departmentid = d.departmentid
select * from departments d left join employees e on d.departmentid = e.departmentid
select * from departments d left join employees e on d.departmentid = e.departmentid where e.employeeid is null
select c.customerid,c.customername,o.orderid,o.orderdate from customers c left join orders o on c.customerid = o.customerid
select * from customers c left join orders o on c.customerid = o.customerid where o.orderid is null
