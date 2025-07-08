-- Write your PostgreSQL query statement below
select r.contest_id,
round(count(r.user_id)*100.0/ (select count( u.user_id) from users as u ),2) as percentage
from users as u
join register as r on u.user_id=r.user_id
group by 
r.contest_id
order by
 percentage desc,contest_id asc
