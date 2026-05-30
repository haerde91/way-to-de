--task:Show only subjects with more than 3 prizes.
select subject, count(*) as prizes_per_subject
from nobel
group by subject
having count(*)>3;
