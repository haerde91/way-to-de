--task: Show winners whose name starts with e (case-insensitive).
select winner
from nobel
where winner ilike 'e%';
