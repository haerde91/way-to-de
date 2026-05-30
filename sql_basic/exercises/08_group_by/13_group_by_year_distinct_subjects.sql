--task: Count distinct subjects per year.
select yr, count(distinct subject) as unique_subject_per_year
from nobel
group by yr;
