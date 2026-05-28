--task: Show: winner, subject, yr
--only for winners whose name:
--starts with H or E
--and year is after 1901
--sort by winner ascending
select winner, subject, yr
from nobel
where (winner like 'H%' or  winner like 'E%')
and yr > 1901
order by winner asc;