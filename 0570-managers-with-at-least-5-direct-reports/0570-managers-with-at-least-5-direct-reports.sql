# Write your MySQL query statement below
with MANAGER_NAME as (select e.id, e.name from Employee e CROSS JOIN Employee M ON e.id = M.managerId group by e.id, e.name having count(M.managerId) >= 5)
select name from MANAGER_NAME;