--task: Count how many prizes were awarded per year.
select yr, count(*) as prizes_per_year
from nobel
group by yr;