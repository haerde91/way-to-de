--task: Show winners whose names contain the word von.
select winner
from nobel
where winner like '%von%';