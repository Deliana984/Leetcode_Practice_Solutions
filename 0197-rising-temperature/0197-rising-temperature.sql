# Write your MySQL query statement below
select tod.id from Weather tod JOIN Weather yest 
ON tod.recordDate = DATE_ADD(yest.recordDate, INTERVAL 1 DAY)
where tod.temperature > yest.temperature;