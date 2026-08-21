-----------10 more group by sql solution--------

select count(employeeid)as totalhire, year(hiredate) as hiredate from employees group by year(hiredate) order by year(hiredate)
select gender, sum(salary) as total_salary from employees group by gender
select departmentid, gender , avg(salary) as avg_sal from employees group by departmentid , gender order by departmentid
select gender, max(salary) as max_sal from employees group by gender
select gender, min(salary) as min_sal from employees group by gender
select customerId, count(orderid) as total_order_place from orders group by customerid
select monthname(orderdate) as month , sum(amount) as total_order_amount from orders group by month
select customerid, avg(amount)as avg_order_amount from orders group by customerid
select productid, sum(quantity) as total_qty from orderdetails group by productid
select productid, avg(quantity) as avgqty from orderdetails group by productid


--------------group by having---------------------
-----------count having--------------------

select departmentid, count(employeeid) as counts from employees group by departmentid having counts > 2
select customerid, count(orderID) as order_count from orders group by customerid having order_count > 1
select employeeid, count(orderId) as order_handle from orders group by employeeid having order_handle > 1
select category, count(productname) as product_count from products group by category having product_count
select city, count(customerid) as customer_count from customers group by city having customer_count>=1

----------------sum having---------------

select departmentid, sum(salary) as total_salary from employees group by departmentid having total_salary > 120000
select customerid, sum(amount) as total_order_amount from orders group by customerid having total_order_amount > 40000
select employeeid, sum(amount) as total_sales from orders group by employeeid having total_sales > 50000
select productid, sum(quantity) as total_qty from orderdetails group by productid having total_qty > 3
select category, sum(price) as total_price from products group by category having total_price > 20000

-------------------avg having----------------

select departmentid,avg(salary) as avg_sal from employees group by departmentid having avg(salary) > 60000
select departmentid, avg(salary) as avg_sal from employees group by departmentid having avg_sal<60000
select employeeid , avg(amount) as avg_amount from orders group by employeeid having avg_amount > 20000
select category, avg(price) as avg_price from products group by category having avg_price > 10000
select customerid, avg(amount) as avg_price from orders group by customerid having avg_price > 25000


-----------max having---------------

select departmentid, max(salary) as maxx from employees group by departmentid having maxx > 70000
select employeeid, max(amount) as max_amount from orders group by employeeid having max_amount > 30000



-----------min having------------

select departmentid, min(salary) as min_sal from employees group by departmentid having min_sal >50000
select category, min(price) as min_price from products group by category having min_price > 5000

---------------mix question-----------

select departmentid, count(employeeid) as emp_count, avg(salary) as avg_sal  from employees group by departmentid having avg_sal > 55000


