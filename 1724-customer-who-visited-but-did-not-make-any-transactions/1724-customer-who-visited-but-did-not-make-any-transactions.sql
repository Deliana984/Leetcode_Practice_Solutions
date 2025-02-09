# Write your MySQL query statement below
WITH NoTransactions as (select Visits.customer_id, count(*) as count_no_trans
from Visits LEFT  JOIN Transactions ON Visits.visit_id = Transactions.visit_id where Transactions.transaction_id is NULL group by 
Visits.customer_id) 
select customer_id, count_no_trans from NoTransactions;