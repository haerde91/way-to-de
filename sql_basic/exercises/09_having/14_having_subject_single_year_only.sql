--task: Show subjects that appear in only one year.
select subject, count(distinct yr) as count_distinct_year
from nobel
group by subject
having count(distinct yr) = 1;
