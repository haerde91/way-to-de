--task: Show records where: winner starts with H or E and year is greater than 1901
select *
from nobel
where (winner like 'H%' or winner like 'E%')
and yr > 1901;