--task:Count number of winners per subject.
select subject, count(distinct winner) as unique_winners
from nobel
group by subject;