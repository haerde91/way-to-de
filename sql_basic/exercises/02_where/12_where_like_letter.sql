--task: Show winners whose names start with the letter E.
select winner
from nobel
where winner like 'E%';