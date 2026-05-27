--task: Show winner. Sort results by length of name ascending
select winner
from nobel
order by length (winner);