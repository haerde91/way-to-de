--task:Show years with more than one prize.
select yr, count(*) as count_prizes
from nobel
group by yr
having count(*) > 1;