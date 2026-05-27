--task: Show columns winner, subject, yr. Sort results by winner descending.
select winner, subject, yr
from nobel
order by winner desc;