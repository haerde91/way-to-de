--task:Count prizes per year per subject.
select subject, yr, count(*) as prizes_count
from nobel
group by subject, yr
order by yr;
-- i spend a lot of time on this task caus again i had problem with syntax, i had to use gpt for find resolv

