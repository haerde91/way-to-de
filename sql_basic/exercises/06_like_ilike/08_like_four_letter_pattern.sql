--task: Show winners whose name has exactly 4 characters.
select winner
from nobel
where length (winner) = 4; 
