--task:Show earliest year per subject.
select subject, min(yr) as earliest_year
from nobel
group by subject;