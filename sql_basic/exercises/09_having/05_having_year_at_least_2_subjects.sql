--task:Show years with at least 2 different subjects.
select yr, count(distinct subject) as distinct_subject
from nobel
group by yr
having count(distinct subject)>=2;
