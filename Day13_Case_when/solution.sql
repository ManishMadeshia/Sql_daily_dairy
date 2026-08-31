select firstname,salary,
case
	when salary > 70000 then 'High'
    when salary > 60000 then 'medium'
    else 'low'
end as salary_category
from employees
order by salary_category desc


select firstname,
case 
	when gender = 'Male' then 'M'
    when gender = 'Female' then 'F'
end as GenderCode
from employees

select Productname,Price,
case 
	when price > 30000 then 'Premium'
    when price > 10000 then 'standard'
    else 'Budget'
end as segment_category
from products
order by segment_category desc

select orderid,amount,
case
	when amount > 30000 then 'Large'
    when amount > 20000 then 'Medium'
    else 'Small'
end as price_segment
from orders


select * ,
case
	when managerid is null then 'Top Level'
    else 'Report to Manager'
end as manager_status
from employees

select *,
case 
	when salary >= 70000 then 'A'
    when salary >= 60000 then 'B'
    when salary >= 55000 then 'c'
    else 'D'
end as salary_grade
from employees

select Productname,
case 
	when category = 'Electronics' then 'Technology'
    when category = 'Furniture' then 'Home'
    else 'Other'
end as category_type
from products

select customername,
case 
	when city = 'mumbai' or 'pune' then 'Maharashtra'
    when city = 'Delhi' then 'North India'
    When city = 'Bangalore' or 'Chennai' then 'South India'
    else 'Other'
end as region
from customers

select Firstname,LastName,
case 
	when year(hiredate) > 2023 then 'junior'
    when year(hiredate) > 2022 then 'mid-level'
    else 'Senior'
end as experiecne
from employees

select firstname,lastname,salary,
case 
	when salary > 70000 then salary * 1.20
    when salary > 50000 then salary * 1.10
    else salary*1.05
end as calculate_bonus
from employees

select *,
case
	when amount >= 30000 then 'high value'
    when amount >= 20000 then 'medium value'
    else 'low value'
end as Payment_category
from orders

select e.firstname as employee_name,d.departmentid,
case
	when d.departmentname = 'it' then 'techincal'
    when d.departmentname = 'hr' then 'support'
    when d.departmentname = 'finance' then 'accounts'
    when d.departmentname = 'sales' then 'revenue'
    when d.departmentname ='marketing' then 'markting'
    when d.departmentname = 'operation' then 'logistics'
    else 'department_type not available'
end as department_type
from employees e inner join departments d on e.departmentid = d.departmentid

select productname,price,
case 
	when price >= 30000 then price * 0.15
    when price >= 10000 then price * 0.10
    else price * 0.05
end as discount
from products

select E.employeeid,E.firstname,d.departmentname,e.salary,
case
	when e.salary >= 70000 then 'A'
    when e.salary >=65000 then 'B'
    when e.salary >=60000 then 'C'
    when e.salary >=55000 then 'D'
    else 'E'
end as salary_grade
from employees e join departments d on e.departmentid = d.departmentid
order by salary_grade asc