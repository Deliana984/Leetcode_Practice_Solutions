# Write your MySQL query statement below
select Product.product_name, Sales.year, Sales.price from Sales RIGHT JOIN Product 
ON Sales.product_id = Product.product_id where Sales.year IS NOT NULL AND Sales.price IS NOT NULL;