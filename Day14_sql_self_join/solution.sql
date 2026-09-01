select e.firstname as employee,m.firstname as manager from employees e join employees m on e.managerid = m.employeeid
select e.firstname as emp,m.firstname as manager from employees e left join employees m on e.managerid = m.employeeid
select e.firstname as emp, m.firstname as manager_name from employees e join employees m on e.managerid = m.employeeid where m.firstname = 'manish'
select * from employees e join employees m on e.managerid = m.employeeid where m.firstname = 'karan'
select e.employeeid as empId, e.firstname as emp_name,e.managerid as managerid,m.firstname as managername from employees e join employees m on e.managerid = m.employeeid
select e.firstname as emp_name,e.salary as emp_salary,m.firstname as manager_name,m.salary as manager_salary from employees e join employees m on e.managerid = m.employeeid where e.salary > m.salary
select e.firstname as emp_name,e.salary as emp_salary,m.firstname as manager_name,m.salary as manager_salary  from employees e join employees m on e.managerid = m.employeeid where e.salary < m.salary
select e.firstname as employeename,e.salary as emp_salary,m.firstname as manager_name,m.salary as manager_salary from employees e join employees m on e.managerid = m.employeeid

select m.firstname,count(m.employeeid) as emp_count from employees e join employees m on e.managerid = m.employeeid group by m.firstname having count(m.employeeid)  <= 1
select * from employees e left join employees m on e.managerid = m.employeeid where e.managerid is null
select m.employeeid, count(e.employeeid) from employees e join employees m on e.managerid = m.employeeid group by m.employeeid
select e.managerid ,m.firstname as managername,sum(E.salary) as totalemp_salary from employees e join employees m on e.managerid = m.employeeid
group by e.managerid , m.firstname

select e.firstname as emp_name, e.salary as emp_salary,e.managerid as managerid, m.salary as manager_salary  from employees e join employees m on e.managerid = m.employeeid
where e.salary > m.salary

select e.managerid, m.firstname as managername , 
sum(e.salary) as total_salary 
from employees e join employees m
 on e.managerid = m.employeeid 
 group by e.managerid,
m.firstname 
order by total_salary desc 
limit 1
