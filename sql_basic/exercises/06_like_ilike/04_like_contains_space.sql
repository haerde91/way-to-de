--task: Show winners whose name contains a space.
select winner
from nobel
where winner like '% %';