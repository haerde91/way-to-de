--task: Show all columns. Sort by subject descending, then year ascending
select *
from nobel
order by subject desc, yr asc;