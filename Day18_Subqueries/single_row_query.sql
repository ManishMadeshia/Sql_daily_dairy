select * from employees where salary >(
select avg(salary) from employees)

select * from employees where salary <(
select avg(salary) from employees)

select * from employees where salary =(
select max(salary) from employees)

select * from employees where salary =(
select min(salary) from employees)

select * from employees where salary >(
select salary from employees where firstname = 'Rahul')

select * from employees where salary <(
select salary from employees where Firstname = 'Manish')

select * from employees where salary >(
select salary from employees where firstname = 'Priya')

select * from products where price >(
select avg(price) from products)

select * from products where price =(
select max(price) from products)

select * from products where price < (
select avg(price) from products)


select * from employees where salary =(
select max(salary) from employees)

select * from employees where salary <(
select min(salary) from employees)

select * from employees where salary <(
select min(salary) from employees)