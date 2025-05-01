-- Write your PostgreSQL query statement below
select name
from Salesperson
where sales_id not in ( 
    -- where sales_id not in orders sales_id & company!=RED
    select o.sales_id 
    from orders as o
    join company as c on c.com_id=o.com_id 
    --join o & c and find the company name = RED
    where c.name='RED'
);