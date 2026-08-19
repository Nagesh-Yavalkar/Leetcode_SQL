# Write your MySQL query statement below
select product_id,year as first_year,quantity,price
from Sales
where (product_id,year) IN(
    select product_id,min(year) as year
    from Sales 
    Group by product_id
)
