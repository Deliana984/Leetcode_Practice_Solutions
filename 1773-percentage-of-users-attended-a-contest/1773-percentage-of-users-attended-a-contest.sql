# Write your MySQL query statement below
with Tusers as (
    select count(user_id) totalusers from Users
)
select Register.contest_id, ROUND(COUNT(Register.user_id) * 100.0 / Tusers.totalusers, 2) percentage from Register CROSS JOIN Tusers group by Register.contest_id, Tusers.totalusers order by percentage DESC, Register.contest_id ASC;