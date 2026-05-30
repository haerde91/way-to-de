--task:Show years with more than one prize.
select yr, count(*) as prizes_per_year
from nobel
group by yr
having count(*) > 1;
