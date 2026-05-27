--task: Show winners from the Medicine category after year 1901.
select winner
from nobel
where subject = 'Medicine'
and yr > 1901;