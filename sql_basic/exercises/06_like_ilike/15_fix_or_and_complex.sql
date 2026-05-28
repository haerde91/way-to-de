--task: Show records where: subject is Physics or Medicine.
--and year is between 1901 and 1903
select *
from nobel
where subject in ('Physics', 'Medicine')
and yr between 1901 and 1903;