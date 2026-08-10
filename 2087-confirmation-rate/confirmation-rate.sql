select a.user_id , ifNull(round(sum(b.action ='confirmed')/count(b.user_id),2),0) as 
confirmation_rate
from Signups as a
left join  Confirmations as b
on a.user_id = b.user_id
group by a.user_id;


