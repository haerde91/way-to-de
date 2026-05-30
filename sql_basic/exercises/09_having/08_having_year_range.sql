--task: show a subject where the difference
--between the first and last prize is greater than 5
select subject, (max(yr)-min(yr)) as difference_year
from nobel
group by subject
having (max(yr)-min(yr))>5;