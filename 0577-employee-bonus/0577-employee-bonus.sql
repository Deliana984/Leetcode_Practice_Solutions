# Write your MySQL query statement below
select Employee.name, Bonus.bonus from Employee LEFT JOIN Bonus ON Employee.empId = Bonus.empId where bonus is NULL OR bonus < 1000;