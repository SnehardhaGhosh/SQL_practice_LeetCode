-- Write your PostgreSQL query statement below
select eu.unique_id,
e.name
from employees as e
left join employeeUni as eu on e.id=eu.id