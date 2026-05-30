--task: Show years that have more than 3 records.
select yr, count(*) as count_records
from nobel
group by yr
having count(*) >3;
