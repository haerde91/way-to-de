--task: Show winners whose name starts with Al.
select winner
from nobel
where winner like 'Al%';
-- no matching rows in dataset 
--(valid query, edge case)