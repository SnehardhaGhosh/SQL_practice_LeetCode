-- Write your PostgreSQL query statement below
select employee_id
from employees as e
where not exists(
    select *
    from salaries as s
    where e.employee_id=s.employee_id
)

union

select employee_id
from salaries as s
where not exists(
    select *
    from employees as e
    where s.employee_id=e.employee_id

)
order by employee_id asc;
