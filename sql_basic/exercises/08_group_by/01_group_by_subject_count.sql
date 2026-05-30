--task:Count number of prizes in each subject.
select subject, count(*) as prize_count
from nobel
group by subject;