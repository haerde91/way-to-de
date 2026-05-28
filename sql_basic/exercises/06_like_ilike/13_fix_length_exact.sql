--task: Show winner where name length is exactly 6 characters.
select winner
from nobel
where length(winner) = 6;