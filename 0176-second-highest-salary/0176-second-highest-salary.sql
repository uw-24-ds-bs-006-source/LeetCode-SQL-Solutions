# Write your MySQL query statement below
select max(salary) AS SecondHighestSalary from Employee
Where salary < (select Max(salary) From Employee);