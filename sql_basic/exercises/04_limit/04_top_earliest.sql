--task: Show 5 earliest awards.
select *
from nobel
order by yr ASC
limit 5;