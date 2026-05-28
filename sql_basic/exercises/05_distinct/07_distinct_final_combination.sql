--task: Show unique combinations of:
--subject, winner
--Only for years after 1902
--Order by subject, then winner
select distinct subject, winner
from nobel
where yr > 1902
order by subject, winner;
