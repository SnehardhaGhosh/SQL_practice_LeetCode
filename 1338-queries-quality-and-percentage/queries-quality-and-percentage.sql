-- Write your PostgreSQL query statement below
select query_name,
Round(avg(rating/position :: decimal ),2) as quality,
Round(sum((rating < 3):: int) *100./count(*),2) as poor_query_percentage
from queries
where  query_name is not null
group by
query_name;