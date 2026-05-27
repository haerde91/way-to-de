--task: Show winner, subject, yr. Only for years after 1902. Sort by subject, then year.
select winner, subject, yr
from nobel
where yr > 1902
order by subject, yr;