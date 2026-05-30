--task: For each year, show the number of distinct subjects in which prizes were awarded.
select yr, count(distinct subject)
from nobel
group by yr;
