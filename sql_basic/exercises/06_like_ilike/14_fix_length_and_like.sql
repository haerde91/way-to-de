--task: Show winner where: name starts with E and is longer than 10 characters. 
select winner
from nobel
where winner like 'E%'
and length (winner) > 10;