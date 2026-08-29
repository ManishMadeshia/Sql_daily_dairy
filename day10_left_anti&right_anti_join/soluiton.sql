----------------left join-----------------------

select * from departments d left join employees e on d.departmentid = e.departmentid where e.departmentid is null
select * from customers c left join orders o on c.customerid = o.customerid where o.customerid is null 
select * from products p left join orderdetails os on p.productid = os.productid where os.productid is null
select * from employees e left join orders o on e.employeeid = o.employeeid where o.orderid is null
select * from orders o left join customers c on o.customerid = c.customerid where c.customerid is null
select * from orderdetails os left join products p on os.productid = p.productid where p.productid is null

select d.departmentid,d.departmentname from departments d left join employees e on d.departmentid = e.departmentid where e.employeeid is null
select c.customerid,c.customername,c.city from customers c left join orders o on c.customerid = o.customerid where o.orderid is null

select p.productid,p.productname,p.category,p.price from products p left join orderdetails os on p.productid = os.productid where os.productid is null
select e.employeeid,e.firstname,e.salary from employees e left join orders o on e.employeeid = o.employeeid where o.orderid is null


-----------------------right join--------------------

select * from employees e right join departments d on e.departmentid = d.departmentid where e.employeeid is null
select * from orders o right join customers c on o.customerid = c.customerid where o.orderid is null
select * from orderdetails os right join products p on os.productid = p.productid where os.productid is null
select * from orders o right join employees e on o.employeeid = e.employeeid where o.orderid is null