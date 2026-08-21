---------count group by -----------

select departmentid, count(*) as c from employees group by departmentid
select gender, count(*) as c from employees group by gender
select employeeid, count(*) as total_orders from orders group by employeeid
select category, count(*) as total_product_count from products group by category
select city, count(customerid) as counts from customers group by city

-----------sum group by-----------

select departmentId, sum(salary)as s from employees group by departmentid
select employeeid, sum(amount) as total_sales from orders group by employeeid
select customerid, sum(amount) as total_sales from orders group by customerid
select productid, sum(quantity) as qty_sold from orderdetails group by productid
select p.category, sum(p.price*o.quantity) as total_value from products p join orderdetails o on p.productid = o.productid group by p.category


--------avg group by---------


select d.departmentname, avg(e.salary)as avg_sal_by_dept from employees e join departments d on e.departmentid = d.departmentid group by d.
select gender, avg(salary) as avgs from employees group by gender
select employeeid, avg(amount) as a from orders group by employeeid
select category, avg(price) as p from products group by category
select productid, avg(quantity) as q from orderdetails group by productid

------------min------------
select departmentid, min(salary) as m from employees group by departmentid
select employeeid, min(amount) as a from orders group by employeeid

--------max----------


select departmentId, max(salary) as s from employees group by departmentid
select employeeid, max(amount) as a from orders group by employeeid
select category, sum(price) as p from products group by category

