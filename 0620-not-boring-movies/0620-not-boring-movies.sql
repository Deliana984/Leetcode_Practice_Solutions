# Write your MySQL query statement below
select id, movie, description, rating from Cinema where mod(id,2) <> 0 AND description NOT IN ('boring') order by rating DESC;