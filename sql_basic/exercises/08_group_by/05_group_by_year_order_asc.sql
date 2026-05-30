--task:Count prizes per year ordered by year ascending.
select yr, count(*) as prizes_per_year
from nobel
group by yr
order by yr asc;