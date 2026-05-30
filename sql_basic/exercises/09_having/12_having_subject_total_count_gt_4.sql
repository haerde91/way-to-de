--task: Show subjects with total number of prizes greater than 4.
select subject, count(*) as count_prizes
from nobel
group by subject
having count(*) > 4;
