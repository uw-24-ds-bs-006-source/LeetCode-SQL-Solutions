# Write your MySQL query statement below
Select d.name as Department,e.name as Employee,e.salary as Salary
from Employee e join Department d on  e.departmentId = d.id
Where 3>(Select COUNT(Distinct e2.salary)From Employee e2
Where e2.departmentId = e.departmentId and e2.salary > e.salary)