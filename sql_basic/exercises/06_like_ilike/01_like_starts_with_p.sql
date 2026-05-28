--task: Show all winners whose name starts with P
select winner
from nobel
where winner like 'P%';