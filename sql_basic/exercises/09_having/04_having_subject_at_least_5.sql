--task: Show subjects with at least 5 prizes.
select subject, count(*) as count_prizes
from nobel
group by subject
having count(*) >=5;