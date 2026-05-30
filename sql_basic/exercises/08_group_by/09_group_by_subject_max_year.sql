--task:Show latest year per subject.
select subject, max(yr) as latest_prize
from nobel
group by subject;