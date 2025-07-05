-- Write your PostgreSQL query statement below
select sell_date,
count(distinct product) as num_sold,
String_Agg(distinct product, ',' order by product) as products
from activities
group by 
sell_date