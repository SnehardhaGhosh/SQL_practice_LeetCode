-- Write your PostgreSQL query statement below
select *, 'Yes' as triangle
from triangle
where (x+y > z) and (y+z > x) and (x+z > y)

union

select *, 'No' as triangle
from triangle
where (x+y <= z) or (y+z <=x) or (z+x <= y);