--task: Display: winner, name length winner (any alias). Sort results by name length ascending
select winner, length (winner) as length_name
from nobel
order by length_name asc;