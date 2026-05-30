--task:Show subjects with more than 2 different winners.
select subject, count(distinct winner) as count_distinct_winner
from nobel
group by subject
having count(distinct winner) > 2;