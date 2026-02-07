-- Write your PostgreSQL query statement below
select teacher_id
,count(Distinct subject_id) as "cnt"
from teacher
group by
teacher_id