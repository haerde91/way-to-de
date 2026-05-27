--task: Show winner. Sort by name length descending
select winner
from nobel 
order by length (winner) desc;