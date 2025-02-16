# Write your MySQL query statement below
select Prices.product_id, 
ROUND(COALESCE(SUM(Prices.price*UnitsSold.units)/NULLIF(SUM(UnitsSold.units),0),0),2) average_price from Prices LEFT JOIN UnitsSold ON Prices.product_id = UnitsSold.product_id AND UnitsSold.purchase_date between Prices.start_date AND Prices.end_date group by product_id;
