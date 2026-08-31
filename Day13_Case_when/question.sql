Q1

Display FirstName, Salary and Salary Category:

Salary > 70000 → High
Salary 50000–70000 → Medium
Below 50000 → Low
Q2

Display FirstName and:

Male → M
Female → F

Alias: GenderCode

Q3

Display ProductName, Price and:

Price > 30000 → Premium
Price 10000–30000 → Standard
Below 10000 → Budget
Q4

Display OrderID, Amount and:

Amount > 30000 → Large
Amount 20000–30000 → Medium
Below 20000 → Small
Q5

Display FirstName and Manager Status:

ManagerID IS NULL → Top Level
Otherwise → Reports To Manager
Q6

Display employee name and salary grade:

Salary >= 80000 → A
Salary >= 65000 → B
Salary >= 50000 → C
Otherwise → D
Q7

Display ProductName and Category Type:

Electronics → Technology
Furniture → Home
Otherwise → Other
Q8

Display CustomerName and Region:

Mumbai or Pune → Maharashtra
Delhi → North India
Bangalore or Chennai → South India
Otherwise → Other
Q9

Display employee name and experience:

HireDate before 2022 → Senior
HireDate 2022–2023 → Mid-Level
HireDate after 2023 → Junior
Q10 ⭐

Display employee name, salary and calculate Bonus:

Salary > 70000 → 20%
Salary > 50000 → 10%
Otherwise → 5%

Return the actual bonus amount, not the percentage.

Q11

Display OrderID and Payment Category:

Amount >= 30000 → High Value
Amount >= 20000 → Medium Value
Otherwise → Low Value
Q12

Display employee name and Department Type.

Use a JOIN between Employees and Departments:

IT → Technical
HR → Support
Finance → Accounts
Sales → Revenue
Marketing → Marketing
Q13 ⭐

Display ProductName, Price and Discount:

Price >= 30000 → 15% discount
Price >= 10000 → 10% discount
Otherwise → 5% discount

Return the discount amount.

Q14 ⭐⭐

Display employee name and salary comparison:

Compare each employee's salary with the average company salary:

Above average → Above Average
Equal to average → Average
Below average → Below Average

Hint: You'll need a subquery.

Q15 ⭐⭐⭐

Display:

EmployeeID
FirstName
DepartmentName
Salary
Salary Grade

Salary Grade:

>= 80000 → A
>= 65000 → B
>= 50000 → C
< 50000  → D

Use Employees + Departments.