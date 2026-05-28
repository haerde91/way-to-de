--task: Show records where winner starts with H or E.
select *
from nobel
where (winner like 'H%' or winner like 'E%');