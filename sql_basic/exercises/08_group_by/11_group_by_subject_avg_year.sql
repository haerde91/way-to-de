--task:Calculate average award year per subject.
select subject, avg(yr) as avg_year
from nobel
group by subject;
