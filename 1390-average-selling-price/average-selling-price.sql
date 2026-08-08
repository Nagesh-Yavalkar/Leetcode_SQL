# Write your MySQL query statement below

select a.product_id ,
ifNull(round(sum(b.units*a.price)/sum(b.units),2),0) average_price
from Prices as a
left join unitsSold as b
on b.product_id = a.product_id and
b.purchase_date  between a.start_date and a.end_date
group by a.product_id;