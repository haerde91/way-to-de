--task: Sort by winner ascending. Show only 4 rows.
select *
from nobel 
order by winner ASC
limit 4;