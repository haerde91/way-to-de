--task: Show: winner, subject, yr
--Conditions: winner starts with P or S
--subject is not Peace
--year > 1901
--Order by year ascending
select winner, subject, yr
from nobel
where (winner like 'P%' or winner like 'S%')
and subject <> 'Peace'
and yr > 1901
order by yr asc;