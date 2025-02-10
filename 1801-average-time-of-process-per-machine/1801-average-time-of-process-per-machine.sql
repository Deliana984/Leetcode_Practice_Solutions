# Write your MySQL query statement below
with Machine_Processing as (select start.machine_id, start.process_id, (end.timestamp - start.timestamp) processing_time from Activity start JOIN Activity end 
ON start.process_id = end.process_id 
AND start.machine_id = end.machine_id 
AND start.activity_type = 'start' 
AND end.activity_type = 'end' where end.timestamp > start.timestamp group by 1,2 order by 1,2 ASC)
select machine_id, round(AVG(processing_time),3) processing_time from Machine_Processing group by machine_id order by machine_id ASC; 