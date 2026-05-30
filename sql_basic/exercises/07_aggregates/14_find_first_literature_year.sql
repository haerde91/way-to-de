--task:Find the earliest year when a Literature prize was awarded.
select min(yr) as earliest_literature_prize
from nobel
where subject = 'Literature';