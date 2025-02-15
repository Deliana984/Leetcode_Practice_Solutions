# Write your MySQL query statement below
with Counted_messages as (
    select Signups.user_id,
    Confirmations.action
    from Signups LEFT JOIN Confirmations ON Signups.user_id = Confirmations.user_id 
),
Confirmed_messages as (
    select user_id,
    count(*) total_mgg,
    COUNT(CASE WHEN action='confirmed' THEN action END) as confirm_mgg
    from Counted_messages group by user_id
)
select user_id, round((cast(confirm_mgg as DECIMAL)/total_mgg),2) confirmation_rate from Confirmed_messages;