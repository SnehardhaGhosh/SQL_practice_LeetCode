-- Write your PostgreSQL query statement below
select s.student_id
,student_name
,su.subject_name
,count(e.student_id) as "Attended_exams"
from students as s 
cross join subjects as su
left join examinations as e on s.student_id=e.student_id and su.subject_name=e.subject_name
group by s.student_id,s.student_name, su.subject_name
