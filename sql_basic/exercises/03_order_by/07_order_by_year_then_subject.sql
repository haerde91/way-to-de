--task: Show all columns. Sort first by year, then by subject.
select*
from nobel
order by yr, subject;