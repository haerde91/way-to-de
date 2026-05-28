--task: Show first 3 records from Literature.
select *
from nobel
where subject = 'Literature'
limit 3;