-- Write your PostgreSQL query statement below
select employee_id,
case
    when employee_id % 2 = 0 THEN 0
    WHEN NAME LIKE  'M%' THEN 0
    ELSE SALARY
END AS BONUS
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID


