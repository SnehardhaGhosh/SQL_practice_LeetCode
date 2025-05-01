-- Write your PostgreSQL query statement below
select name as customers
from Customers as c
left join orders as o on c.id = o.customerId
where o.id is null;



