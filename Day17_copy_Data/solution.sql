Create table Employee_backup as
select * from employees

select * from employee_backup

Create Table Employees_final_bkp like Employees

insert into employees_final_bkp
select * from employees

select * from employees_final_bkp