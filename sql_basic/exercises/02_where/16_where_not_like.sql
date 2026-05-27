--task: Show winners whose name does not contain the letter e.
select winner
from nobel
where winner not ilike '%e%';