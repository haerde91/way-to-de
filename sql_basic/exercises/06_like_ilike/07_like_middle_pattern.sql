--task: Show winners whose name contains ri anywhere.
select winner
from nobel
where winner ilike '%ri%';