-- Write your PostgreSQL query statement below
select date_id,
make_name,
count(distinct lead_id) as Unique_leads,
count(distinct partner_id) as Unique_partners
from DailySales 
group by
date_id,make_name