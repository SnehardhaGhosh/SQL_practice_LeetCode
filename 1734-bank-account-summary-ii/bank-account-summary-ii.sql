-- Write your PostgreSQL query statement below
select u.name,
sum(amount)as balance
from users as u
join transactions as t on u.account=t.account
group by
u.name
having sum(amount) >10000
