--task: Show 5 latest awards.
select *
from nobel
order by yr DESC
limit 5;