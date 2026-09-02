select firstname, gender, salary,
	case
		when gender = 'Male' then  
			case
				when salary >= 60000 then "male high"
                else "male Low"
			end
		when gender = 'Female' then
			case 
				when salary >= 60000 then 'female high'
                else 'female low'
			end
		else 'unknown'
	end as category
from employees




select *,
	case 
		when departmentid = 1 then
			case 
				when salary >= 60000 then 'IT high'
                else 'IT LOW'
			end
		when departmentid = 2 then
			case
				when salary > 45000 then 'hr high'
                else 'hr low'
			end
		when departmentid = 3 then
			case
				when salary > 40000 then 'finance high'
                else 'finance low'
			end
		when departmentid = 4 then
			case
				when salary > 50000 then 'sales high'
                else 'sales low'
			end
		when departmentid = 5 then
			case
				when salary > 50000 then 'marketing high'
                else 'marketing low'
			end
		when departmentid = 6 then
			case 
				when salary > 50000 then 'operation high'
                else 'operation low'
			end
		else 'unknown'
	end as category
from employees
order by departmentid


select *,
	case 
		when category = 'electronics' then
			case 
				when price >= 30000 then 'premium electronic'
                else 'regular electronic'
			end
		when category = 'furniture' then
			Case
				when price >= 10000 then 'premium furniture'
                else ' regular furniture'
			end
		else 'unknow'
	end as productprice_category
from products
order by category

select *,
	case 
		when managerid is null then 'top level'
        else 
			case
				when salary >= 60000 then 'Senior Employee'
                else 'Junior Employee'
			end
		end as category
from employees


select *,
	case 
		when departmentid = 1 then 
			case 
				when salary >= 70000 then 'IT Senior'
                else 'IT Junior'
			end
		when departmentid = 2 then
			case 
				when salary >= 60000 then 'Hr senior'
                else 'HR Junior'
			end
		else 'other department'
	end as department_category
from employees


select *,
	case 
		when amount >= 30000 then 'High Value'
        else
			case
				when amount >= 15000 then 'medium value'
                else 'Low value'
			end
		end as amount_category
from orders

select e.FirstName,
    d.DepartmentName,
    e.Salary,
	case
		when d.departmentname = 'it' then
			case
				when e.salary >= 70000 then 'IT Senior'
                else 'IT Junior'
			end
            
		when d.departmentname = 'hr' then
			case 
				when e.salary >= 60000 then 'HR SENIOR'
                else "HR JUNIOR"
			end
            
		else 'other'
	end as department_category
from employees e join departments d on e.departmentid = d.departmentid

select productname,category,price,
	case
		when category = 'Electronics' then
        case
			when price >= 30000 then 'premium'
            else 'regular'
		end
        
        when category = 'Furniture' then
        case
			when price >= 10000 then 'premium'
            else ' regular'
		end
        else 'category not defined'
	end as product_category
from products

elect *,
	case 
		when gender = 'male' then
        case
			when salary >= 70000 then 'Male senior'
            else ' Male junior'
		end
        
        when gender = 'female' then
        case
			when salary >= 65000 then 'female senior'
            else 'female junior'
		end
	end as salary_gender_category
from employees

select * ,
	case 
		when managerid is null then 'Manager'
        else
			case
				when salary >= 60000 then 'high paid employee'
                else 'regular employee'
			end
		end as cat
from employees

