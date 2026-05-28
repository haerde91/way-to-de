--task: Show winners whose name contains the letter e.
select winner
from nobel
where winner ilike '%e%';