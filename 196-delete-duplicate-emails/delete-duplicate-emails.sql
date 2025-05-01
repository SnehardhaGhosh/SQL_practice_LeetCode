-- Write your PostgreSQL query statement below
delete from person
using person p2
where person.email=p2.email
and person.id >p2.id


