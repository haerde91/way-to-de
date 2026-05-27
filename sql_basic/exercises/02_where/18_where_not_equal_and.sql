--task: Show all records where: subject is NOT Peace
-- and year is less than 1903
select *
from nobel 
where subject <> 'Peace'
and yr < 1903 ; 