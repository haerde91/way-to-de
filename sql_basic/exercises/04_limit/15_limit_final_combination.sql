--task: Show: winner, subject, yr.
--Only for years after 1901.
--Order by yr descending.
--Limit to 5 rows
select winner, subject, yr
from nobel
where yr > 1901
order by yr DESC
limit 5;
