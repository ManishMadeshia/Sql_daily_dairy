----------------------------question---------------------

Q1. Get All Employees
Create a stored procedure named GetAllEmployees that displays all columns of all employees.

Q2. High Salary Employees
Create a stored procedure named GetHighSalaryEmployees that displays employees whose salary is greater than ₹60,000.

Q3. Employee by ID
Create a stored procedure named GetEmployeeByID that accepts an employee ID and displays that employees details.
For example, you should be able to execute it for employee ID 101.

Q4. Employees by Department
Create a stored procedure named GetEmployeesByDepartment that accepts a department ID and displays all employees belonging to that department.

Q5. Employees by Minimum Salary
Create a stored procedure named GetEmployeesByMinSalary that accepts a minimum salary and displays employees earning more than that amount.

----------------solution
Delimiter //
create procedure getemployees()
Begin
	select * from employees;
End //
Delimiter ;

call getemployees()

Delimiter //
create procedure GetHighSalaryEmployees()
Begin
	select * from employees where salary > 60000;
End //
Delimiter ; 

call GetHighSalaryEmployees()


Delimiter //
create procedure GetEmployeeId(
	in emp_id int
)
Begin
	select * from employees where employeeid = emp_id;
End //
Delimiter ;

call GetEmployeeId(101)

Delimiter //
Create Procedure GetEmployeebyDepartment(
	in dept_id int
)
Begin 
	select Firstname,lastname from employees where departmentid = dept_id;
End //
Delimiter ;


call GetEmployeebyDepartment(1)

Delimiter //
Create procedure getemployeebyminSalary(
	in min_sal decimal(10,2)
)
Begin
	Select * from employees where salary > min_sal;
End //
Delimiter ;


call getemployeebyminSalary(64322)



------------------question store procedure with in and out parameter------------------

Q1. Create a procedure GetEmployeeCount that returns the total number of employees using an OUT parameter.
Q2. Create a procedure GetDepartmentEmployeeCount that accepts a department ID and returns the number of employees in that department.
Q3. Create a procedure GetTotalSalary that returns the total salary of all employees.
Q4. Create a procedure GetMaximumSalary that accepts a department ID and returns the maximum salary in that department.
Q5. Create a procedure GetDepartmentAverage that accepts a department ID and returns the average salary for that department.


---------------solution-------------
Delimiter //
Create procedure GetEmployeeCount(
	out emp_count int
)
Begin
	select Count(*) into emp_count from employees;
End //
Delimiter ;

call GetEmployeeCount(@emp_count);

Select @emp_count;


Delimiter //
Create procedure getdepartmentemployeecount(
	in dept_id int,
    out emp_count int
)
Begin
	select count(*) into emp_count from employees where departmentid = dept_id;
End //
Delimiter ;

call getdepartmentemployeecount(1,@emp_count)

select @emp_count


Delimiter //
create procedure GetTotalSalary(
	out total_salary int
)
Begin
	select sum(salary) into total_salary from employees;
End //
Delimiter 

call GetTotalSalary(@total_salary)

select @total_salary

Delimiter // 
Create Procedure GetMaximumSalary(
	in dept_id int,
    out max_sal int
)
Begin 
	Select max(salary) into max_sal from employees where departmentid = dept_id;
end //
Delimiter 

call GetMaximumSalary(1,@max_sal)

select @max_sal

Delimiter //
Create Procedure GetDepartmentAverage(
	in deptid int,
    out avg_sal int
)
Begin
	Select avg(salary) into avg_sal from employees where departmentid = deptid;
End //
Delimiter ;

call GetDepartmentAverage(2,@avg_sal)
select @avg_sal



-----------------------INOUT practice questions------------------

Level 1 — Basic

Q1. Add 100
Create a procedure named AddHundred that accepts an integer using INOUT and adds 100 to it.
Test it with @num = 50. What is the final output?

Q2. Double the number
Create a procedure named DoubleNumber that doubles the input value.
Test it with @num = 25.

Q3. Subtract 20
Create a procedure named SubtractTwenty that subtracts 20 from the input value.
Test it with @num = 100.
Level 2 — Calculations

Q4. Increase salary by 10%
Create a procedure named IncreaseSalary that increases the supplied salary by 10%.
Test it with @salary = 40000.

Q5. Calculate a discount
Create a procedure named ApplyDiscount that reduces the supplied price by 15%.
Test it with @price = 2000.

Q6. Convert hours into minutes
Create a procedure named ConvertToMinutes that converts the supplied number of hours into minutes.
Test it with @hours = 3.
Level 3 — Slightly challenging

Q7. Add two values
Create a procedure named AddValue that receives a number through INOUT and adds 250 to it.
Test it with @amount = 750.

Q8. Apply a bonus
Create a procedure named AddBonus that increases an employees supplied salary by ₹5,000. Do not update the Employees table.
Test it with @salary = 60000.

Q9. Convert rupees to paise
Create a procedure named RupeesToPaise that converts the supplied rupee amount into paise.
Test it with @rupees = 125.

Q10. Apply two calculations
Create a procedure named CalculateFinalAmount that first adds 500 to the supplied amount and then increases the result by 10%.
Test it with @amount = 1000.


----------------------------solution------------------

Delimiter //
Create Procedure addHundred(
	inout num int
)
Begin 
	set num = num + 100;
End //
Delimiter ;

set @num = 100;
call addHundred(@num);

select @num;



Delimiter //
Create procedure subtracttwenty(
	inout nums int
)
Begin
	Set nums = nums-20;
End //
Delimiter ;

set @nums = 100;
call subtracttwenty(@nums)

select @nums



Delimiter //
Create Procedure IncreaseSalary(
	inout salary decimal(10,2)
)
BEgin
	set salary = salary * 1.10;
end //
Delimiter ;

set @salary = 25000;

call IncreaseSalary(@salary)

select @salary



Delimiter //
Create procedure ApplyDiscount(
	inout price decimal(10,2)
)
Begin
	set price = price * 0.85;
End //
Delimiter ;

set @price = 2000;
call ApplyDiscount(@price)
select @price



Delimiter //
Create Procedure ConvertToMinutes(
	inout hours bigint
)
Begin
	set hours = 60 * hours;
end //
Delimiter ;

set @hours  = 3
call ConvertToMinutes(@hours)

select @hours as totalminutes



Delimiter // 
create procedure AddValue(
	inout num decimal(10,2)
)
Begin
	set num = num + 250;
end //
Delimiter ;

set @num = 650;
call addvalue(@num)
select @num as amount



Delimiter //
Create Procedure AddBonus(
	INOUT SALARY decimal(10,2)
)
Begin
	set salary = salary + 5000;
End //
Delimiter ;

set @salary = 50000
call addbonus(@salary)
select @salary


Delimiter //
Create Procedure RupeesToPaise(
	inout rupees int
)
Begin
	set rupees = rupees * 100;
End //
Delimiter ;

set @rupees = 2345
call RupeesToPaise(@rupees)
select @rupees


Delimiter //
Create Procedure CalculateFinalAmount(
	inout amount decimal(10,2)
)
Begin 
	set amount = amount + 500;
    set amount = amount * 1.10;
End //
Delimiter ;

set @amount = 5000
call CalculateFinalAmount(@amount)
select @amount