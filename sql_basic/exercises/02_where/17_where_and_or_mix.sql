--task: Show records where: subject is Physics or Chemistry
-- and year is greater than or equal to 1902
select *
from nobel
where subject in ('Physics', 'Chemistry')
and yr >= 1902;
