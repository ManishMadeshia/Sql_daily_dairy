CASE is used to apply conditional logic in SQL, similar to IF-ELSE.


basic syntax: 

select firstname, salary,
case 
    when salary > 70000 then 'high'
    when salary >= 50000 then 'medium'
    else 'low'
end as sales_categoryy
from employees
