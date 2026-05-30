--task: Show years with more than 2 different subjects.
select yr, count(distinct subject) as count_subject
from nobel
group by yr
having count(distinct subject) > 2;