Q1 Find employees whose salary is greater than ALL employees in DepartmentID = 1.
>> select * from employees where salary > all(
select salary from employees where departmentid = 1)


Q2 Find employees whose salary is less than ALL employees in DepartmentID = 2.
>> select * from employees where salary < all(
select salary from employees where departmentid = 2)

Q3 Find products whose price is greater than ALL products in the Furniture category.
>> select * from products where price >all(
select price from Products where category = 'Furniture')


Q4 Find products whose price is less than ALL products in the Electronics category.
>> select * from products where price < all(
select price from products where category = 'electronics')


Q5 Find employees whose salary is greater than ALL employees managed by EmployeeID 101.
>> select * from employees where salary >all(
select salary from employees where managerid = 101)


Q6 Find employees whose salary is less than ALL employees managed by EmployeeID 106.
>> 
select * from employees where salary < all(
select salary from employees where managerid = 106)


Q7 Find products whose price is greater than ALL products priced below ₹10,000.
>>   
select productname from products where price > all(
select price from products  where price < 10000)


Q8 Find employees whose salary is greater than ALL employees in the HR department.
>> 

select * from employees where salary > all(
select salary from employees where departmentid = 2
)

Q9 Find employees whose salary is less than ALL employees in the IT department.
>>select * from employees where salary < all(
select salary from employees where departmentid = 1)


Q10 Find employees whose salary is greater than ALL employees in the same department as Manish.
>> 

select * from employees where salary > all(
select salary from employees where departmentid in (
select departmentid from employees where firstname = 'manish' ))
